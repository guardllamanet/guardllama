import 'package:flutter/material.dart';
import 'package:guardllama/widgets/key_value_table.dart';
import 'package:guardllama_api/guardllama_api.dart';

import 'header_listile.dart';

class ServerView extends StatefulWidget {
  final V1Server _server;

  const ServerView({
    Key? key,
    required V1Server server,
  })  : _server = server,
        super(key: key);

  @override
  State<ServerView> createState() => _ServerViewState();
}

class _ServerViewState extends State<ServerView> {
  @override
  Widget build(BuildContext context) {
    final config = widget._server.config!;
    final status = widget._server.status!;
    final host = config.cluster!.host!;
    final vpnPortRange = config.cluster!.vpnPortRange!;

    final rows = [
      KeyValueRow(
        key: 'Version:',
        value: Text(status.serverVersion.toString()),
      ),
      KeyValueRow(
        key: 'Kubernetes:',
        value: Text(
            '${status.kubernetesDistribution} (${status.kubernetesVersion})'),
      ),
      KeyValueRow(
        key: 'Docker Image:',
        value: Text(config.manager!.image.toString()),
      ),
      KeyValueRow(
        key: 'Machine IP:',
        value: Text(status.machineIp.toString()),
      ),
      KeyValueRow(
        key: 'Host:',
        value: Text(config.cluster!.host.toString()),
      ),
      KeyValueRow(
        key: 'Exposed ports:',
        value: Text(
            '$host:${vpnPortRange.fromPort}-${vpnPortRange.toPort}/${vpnPortRange.protocol}'),
      ),
    ];

    const header = HeaderListile(
      title: 'Server',
    );

    return Column(
      children: [
        header,
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: KeyValueTable(
                rows: rows,
                dataRowHeight: 60,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
