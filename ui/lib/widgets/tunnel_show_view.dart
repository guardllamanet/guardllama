import 'package:built_collection/built_collection.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:guardllama/context.dart';
import 'package:guardllama/widgets/key_value_table.dart';
import 'package:guardllama/widgets/rounded_button.dart';
import 'package:guardllama/widgets/widget_utils.dart';
import 'package:guardllama_api/guardllama_api.dart';

import '../services/api.dart';
import 'query_logs_table.dart';

class TunnelShowView extends StatefulWidget {
  final V1Tunnel tunnel;

  final VoidCallback tunnelUpdated;

  const TunnelShowView(
      {super.key, required this.tunnel, required this.tunnelUpdated});

  @override
  State<TunnelShowView> createState() => _TunnelShowViewState();
}

class _TunnelShowViewState extends State<TunnelShowView> {
  final _filteringRulesController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _filteringRulesController.text =
        widget.tunnel.config!.ag!.rules!.map((r) => r.rule).join("\n");
  }

  @override
  Widget build(BuildContext context) {
    final status = widget.tunnel.status!;
    final wgDev = status.wg?.device;
    final agQueryLogs = status.ag?.queryLogs;
    final iface = widget.tunnel.config!.wg!.interface_!;
    final peer = widget.tunnel.config!.wg!.peers!.first;
    final ag = widget.tunnel.config!.ag!;
    final bls = ag.blockLists ?? BuiltList();
    final blocklists =
        bls.map((bl) => AdBlockList(name: bl.name!, url: bl.url!)).toList();
    final blockMode =
        [AdBlockMode.defaultMode, AdBlockMode.strictMode].firstWhereOrNull(
      (mode) => const ListEquality().equals(mode.blocklists, blocklists),
    );

    buildTab(List<KeyValueRow> rows, double dataRowHeight) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: KeyValueTable(
            rows: rows,
            dataRowHeight: dataRowHeight,
          ),
        );

    final configRows = [
      // interface
      KeyValueRow(key: 'Interface', boldKeyText: true),
      KeyValueRow(
          key: 'Public key:',
          value: Text(wgDev != null ? wgDev.publicKey.toString() : 'Pending')),
      KeyValueRow(key: 'Status:', value: Text(status.state.toString())),
      KeyValueRow(key: 'Addresses:', value: Text(iface.address!.join(', '))),
      KeyValueRow(key: 'DNS servers:', value: Text(iface.dns!.join(', '))),
      // peer
      KeyValueRow(key: 'Peer', boldKeyText: true),
      KeyValueRow(key: 'Public key:', value: Text(peer.publicKey.toString())),
      KeyValueRow(
          key: 'Preshared key:',
          value: Text(peer.presharedKey != null ? 'Enabled' : 'Disabled')),
      KeyValueRow(key: 'Endpoint:', value: Text(peer.endpoint.toString())),
      KeyValueRow(
        key: 'Allowed IPs:',
        value: Text(peer.allowedIps!.join(', ')),
      ),
    ];

    final dnsRows = [
      // ad
      KeyValueRow(
        key: 'Filtering:',
        keyHelp: 'Turn on/off DNS filtering.',
        value: Switch(
            value: ag.filteringEnabled!,
            onChanged: (value) {
              ContextScope.of(context)
                  .apiService
                  .updateDNSFiltering(widget.tunnel.name, value)
                  .then((_) => widget.tunnelUpdated());
            },
            activeColor: Theme.of(context).iconTheme.color),
      ),
      KeyValueRow(
          key: 'Block mode:',
          keyHelp:
              'Avaiable block modes:\n1. Default: a balance between adblocking and user experience (UX).\n2. Strict: blocks more ads and prioritizes privacy & safety over UX.',
          value: DropdownButton(
            value: blockMode,
            hint: const Text("Select block mode"),
            items: [AdBlockMode.defaultMode, AdBlockMode.strictMode]
                .map((m) => DropdownMenuItem(value: m, child: Text(m.name)))
                .toList(),
            onChanged: (mode) {
              if (mode != null) {
                ContextScope.of(context)
                    .apiService
                    .updateDNSBlockMode(widget.tunnel.name, mode)
                    .then((_) => widget.tunnelUpdated());
              }
            },
          )),
      KeyValueRow(
        key: 'Filtering rules:',
        keyHelp:
            'Filtering rules examples:\n1. ||example.org^: block access to example.org and all its subdomains;\n2. @@||example.org^: unblock access to example.org and all its subdomains;\n3. 127.0.0.1 example.org: respond with 127.0.0.1 for example.org (but not for its subdomains);\n4. ! Here goes a comment.: just a comment;\n5. # Also a comment.: just a comment;\n6. /REGEX/: block access to domains matching the specified regular expression.',
        value: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Form(
            child: ListTile(
              contentPadding: EdgeInsets.zero,
              title: Transform.translate(
                offset: const Offset(-16, 0),
                child: TextFormField(
                  keyboardType: TextInputType.multiline,
                  minLines: 10,
                  maxLines: null,
                  controller: _filteringRulesController,
                  textInputAction: TextInputAction.send,
                  decoration: const InputDecoration(
                      isDense: true,
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black))),
                ),
              ),
              trailing: Transform.translate(
                  offset: const Offset(-16, 0),
                  child: RoundedButton(
                      text: 'Apply',
                      onPressed: () {
                        ContextScope.of(context)
                            .apiService
                            .updateDNSFilteringRules(
                                widget.tunnel.name,
                                _filteringRulesController.text
                                    .split("\n")
                                    .where((element) => element.isNotEmpty)
                                    .toList())
                            .then((_) {
                          widget.tunnelUpdated();
                          WidgetUtils.showInfo(
                              context, "Filtering rules updated");
                        });
                      })),
            ),
          ),
        ),
      ),
    ];

    final header = Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: ListTile(
        leading: Transform.translate(
          offset: const Offset(-20, 0),
          child: IconButton(
            icon: Icon(Icons.arrow_back_rounded, color: Colors.grey[600]),
            onPressed: () => context.go('/tunnels'),
          ),
        ),
        minLeadingWidth: 10,
        title: Transform.translate(
          offset: const Offset(-20, 0),
          child: Text(
            widget.tunnel.name,
            style: TextStyle(
              fontSize: Theme.of(context).textTheme.headlineLarge!.fontSize,
              fontWeight: FontWeight.bold,
              fontFamily: Theme.of(context).textTheme.headlineLarge!.fontFamily,
            ),
          ),
        ),
      ),
    );

    return Column(
      children: [
        header,
        Expanded(
          child: DefaultTabController(
            length: 3,
            child: Column(
              children: [
                TabBar(
                  //isScrollable: true,
                  indicatorSize: TabBarIndicatorSize.label,
                  labelColor: Colors.black,
                  overlayColor: MaterialStateColor.resolveWith((states) {
                    return Colors.transparent;
                  }),
                  indicatorColor: Theme.of(context).colorScheme.primary,
                  automaticIndicatorColorAdjustment: true,
                  unselectedLabelColor: Colors.grey,
                  tabs: const [
                    Tab(
                      icon: Icon(Icons.vpn_key_rounded),
                      text: "VPN",
                    ),
                    Tab(
                      icon: Icon(Icons.filter_rounded),
                      text: "Filters",
                    ),
                    Tab(
                      icon: Icon(Icons.manage_search_rounded),
                      text: "Query Logs",
                    )
                  ],
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      buildTab(configRows, 60),
                      buildTab(dnsRows, 100),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: QueryLogsTable(
                              logs: agQueryLogs == null
                                  ? List.empty()
                                  : agQueryLogs.toList()),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
