import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:guardllama/context.dart';
import 'package:guardllama/widgets/copy_button.dart';
import 'package:guardllama_api/guardllama_api.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:timeago_flutter/timeago_flutter.dart';

import '../services/service_utils.dart';

class TunnelRow extends StatefulWidget {
  const TunnelRow({
    Key? key,
    required this.tunnel,
    required this.tunnelRemovedCallback,
  }) : super(key: key);

  final V1Tunnel tunnel;

  final Function(String name) tunnelRemovedCallback;

  @override
  State<TunnelRow> createState() => _TunnelRowState();
}

class _TunnelRowState extends State<TunnelRow> {
  bool _isTunnelReady() =>
      widget.tunnel.status!.state == TunnelStatusState.READY;

  double _limitQrSize(double size) {
    if (size > 300) size = 300;
    return size;
  }

  @override
  Widget build(BuildContext context) {
    Widget icon = const CircularProgressIndicator();
    switch (widget.tunnel.status!.state) {
      case TunnelStatusState.READY:
        icon = Icon(
          Icons.circle_rounded,
          color: Colors.green[600],
        );
        break;
      case TunnelStatusState.ERROR:
        icon = Tooltip(
          message: widget.tunnel.status!.details,
          child: Icon(
            Icons.error,
            color: Colors.red[600],
          ),
        );
        break;
      case TunnelStatusState.PENDING:
        icon = SizedBox(
          height: Theme.of(context).iconTheme.size,
          width: Theme.of(context).iconTheme.size,
          child: CircularProgressIndicator(
              color: Theme.of(context).iconTheme.color),
        );
        break;
    }

    listTileOnTap() {
      context.go('/tunnels/${widget.tunnel.name}');
    }

    qrButtonOnPressed() {
      showDialog<String>(
        context: context,
        builder: (context) => AlertDialog(
          content: SizedBox(
            width: _limitQrSize(MediaQuery.of(context).size.width),
            height: _limitQrSize(MediaQuery.of(context).size.height),
            child: Center(
              child: QrImage(
                data: widget.tunnel.config!.wg!.wgConfig.toString(),
                gapless: true,
                version: QrVersions.auto,
              ),
            ),
          ),
        ),
      );
    }

    downloadButtonOnPressed() {
      ServiceUtils.download(widget.tunnel.config!.wg!.wgConfig.toString(),
          "${widget.tunnel.name}.conf");
    }

    copyButtonOnPressed() {
      ServiceUtils.copyClipboard(widget.tunnel.config!.wg!.wgConfig.toString());
    }

    return Column(
      children: [
        ListTile(
          leading: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [icon],
          ),
          title: Padding(
            padding: const EdgeInsets.only(bottom: 5.0),
            child: Text(
              widget.tunnel.name,
            ),
          ),
          subtitle: Timeago(
            builder: (_, value) => Text(value),
            date: widget.tunnel.createdAt!,
            allowFromNow: true,
          ),
          trailing: Column(
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    tooltip: "Show WireGuard QR Code",
                    onPressed: _isTunnelReady() ? qrButtonOnPressed : null,
                    icon: const Icon(Icons.qr_code_rounded),
                  ),
                  IconButton(
                    tooltip: "Download WireGuard config",
                    onPressed:
                        _isTunnelReady() ? downloadButtonOnPressed : null,
                    icon: const Icon(Icons.download_rounded),
                  ),
                  CopyIconButton(
                    tooltip: "Copy WireGuard config",
                    onPressed: _isTunnelReady() ? copyButtonOnPressed : null,
                  ),
                  IconButton(
                    tooltip: "Remove Tunnel",
                    onPressed: () {
                      showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          content: Text(
                              'Are you sure you want to remove tunnel ${widget.tunnel.name}?'),
                          actions: [
                            TextButton(
                              onPressed: () => Navigator.pop(context, 'No'),
                              child: const Text('No'),
                            ),
                            TextButton(
                              onPressed: () async {
                                Navigator.pop(context, 'Yes');
                                await ContextScope.of(context)
                                    .apiService
                                    .removeTunnel(widget.tunnel.name);
                                widget
                                    .tunnelRemovedCallback(widget.tunnel.name);
                              },
                              child: const Text('Yes'),
                            ),
                          ],
                        ),
                      );
                    },
                    icon: const Icon(
                      Icons.delete_forever_rounded,
                    ),
                  ),
                ],
              ),
            ],
          ),
          enabled: _isTunnelReady(),
          onTap: listTileOnTap,
        ),
      ],
    );
  }
}
