import 'package:built_collection/built_collection.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:guardllama/context.dart';
import 'package:guardllama/widgets/key_value_table.dart';
import 'package:guardllama/widgets/widget_utils.dart';
import 'package:guardllama_api/guardllama_api.dart';
import 'package:url_launcher/url_launcher.dart';

import '../services/api.dart';

class TunnelShowView extends StatefulWidget {
  final V1Tunnel tunnel;

  final VoidCallback tunnelUpdated;

  const TunnelShowView(
      {super.key, required this.tunnel, required this.tunnelUpdated});

  @override
  State<TunnelShowView> createState() => _TunnelShowViewState();
}

class _TunnelShowViewState extends State<TunnelShowView> {
  AdBlockMode _getAdBlockMode() {
    final agh = widget.tunnel.config!.agh!;
    final bls = agh.blockLists ?? BuiltList();
    final blockLists =
        bls.map((bl) => AdBlockList(name: bl.name!, url: bl.url!)).toList();
    final blockMode =
        [AdBlockMode.defaultMode, AdBlockMode.strictMode].firstWhereOrNull(
      (mode) => const SetEquality()
          .equals(mode.blocklists.toSet(), blockLists.toSet()),
    );

    return blockMode ?? AdBlockMode.customMode;
  }

  @override
  Widget build(BuildContext context) {
    final status = widget.tunnel.status!;
    final wgDev = status.wg?.device;
    final iface = widget.tunnel.config!.wg!.interface_!;
    final peer = widget.tunnel.config!.wg!.peers!.first;
    final aghs = widget.tunnel.status!.agh!;

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
            value: aghs.filteringEnabled!,
            onChanged: (value) {
              ContextScope.of(context)
                  .apiService
                  .updateDNSFiltering(widget.tunnel.name, value)
                  .then((_) {
                widget.tunnelUpdated();
                WidgetUtils.showInfo(
                    context, 'DNS filtering is ${value ? 'on' : 'off'}');
              });
            },
            activeColor: Theme.of(context).iconTheme.color),
      ),
      KeyValueRow(
          key: 'Block mode:',
          keyHelp:
              'Avaiable block modes:\n1. Default: a balance between adblocking and user experience (UX).\n2. Strict: blocks more ads and prioritizes privacy & safety over UX.',
          value: DropdownButton(
            value: _getAdBlockMode(),
            hint: const Text("Select block mode"),
            items: [AdBlockMode.defaultMode, AdBlockMode.strictMode]
                .map((m) => DropdownMenuItem(value: m, child: Text(m.name)))
                .toList(),
            onChanged: (mode) async {
              if (mode != null) {
                ContextScope.of(context)
                    .apiService
                    .updateDNSBlockMode(widget.tunnel.name, mode)
                    .then((_) {
                  widget.tunnelUpdated();
                  WidgetUtils.showInfo(
                      context, 'Block mode updated to ${mode.name}');
                });
              }
            },
          )),
      KeyValueRow(
        key: 'Adanced configuration:',
        keyHelp:
            'Configure advanced DNS settings on the AdGuardHome dashboard.',
        value: InkWell(
          child: Text(
            'Go to AdGuardHome',
            style: TextStyle(
              color: Theme.of(context).primaryColor,
            ),
          ),
          onTap: () =>
              launchUrl(WidgetUtils.aghFiltersPage(widget.tunnel.name)),
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
            length: 2,
            child: Column(
              children: [
                TabBar(
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
                      text: "WireGuard",
                    ),
                    Tab(
                      icon: Icon(Icons.filter_rounded),
                      text: "AdGuardHome",
                    ),
                  ],
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      buildTab(configRows, 60),
                      buildTab(dnsRows, 100),
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
