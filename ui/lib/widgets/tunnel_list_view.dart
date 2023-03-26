import 'package:guardllama/context.dart';
import 'package:guardllama/widgets/header_listile.dart';
import 'package:guardllama/widgets/rounded_button.dart';
import 'package:guardllama_api/guardllama_api.dart';
import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';

import 'tunnel_row.dart';

class TunnelListView extends StatefulWidget {
  final List<V1Tunnel> _tunnels;

  const TunnelListView({
    Key? key,
    required List<V1Tunnel> tunnels,
  })  : _tunnels = tunnels,
        super(key: key);

  @override
  State<TunnelListView> createState() => _TunnelListViewState();
}

class _TunnelListViewState extends State<TunnelListView> {
  void _tunnelRemoved(String name) {
    setState(() {
      widget._tunnels.removeWhere((tun) => tun.name == name);
    });
  }

  void _tunnelAdded(V1Tunnel tun) {
    setState(() {
      widget._tunnels.insert(0, tun);
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget body;
    if (widget._tunnels.isEmpty) {
      body = Column(
        children: [
          ListTile(
            title: Transform.translate(
              offset: const Offset(-8, 0),
              child: const Text(
                "No tunnel is found. Start by creating one.",
              ),
            ),
          ),
        ],
      );
    } else {
      body = Expanded(
        child: ListView.builder(
          itemCount: widget._tunnels.length,
          itemBuilder: (context, index) {
            V1Tunnel tunnel = widget._tunnels[index];

            return DelayedDisplay(
              delay: const Duration(milliseconds: 1),
              fadeIn: true,
              child: Card(
                child: TunnelRow(
                  tunnel: tunnel,
                  tunnelRemovedCallback: _tunnelRemoved,
                ),
              ),
            );
          },
        ),
      );
    }

    final header = HeaderListile(
      title: 'Tunnels',
      trailing: Transform.translate(
        offset: const Offset(12, 0),
        child: RoundedButton(
          iconData: Icons.add_rounded,
          text: 'Create Tunnel',
          onPressed: () async {
            final tun =
                await ContextScope.of(context).apiService.createTunnel();
            _tunnelAdded(tun);
          },
        ),
      ),
    );

    return Column(children: [
      header,
      body,
    ]);
  }
}
