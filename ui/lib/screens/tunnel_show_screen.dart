import 'dart:async';

import 'package:flutter/material.dart';
import 'package:guardllama/context.dart';
import 'package:guardllama_api/guardllama_api.dart';
import 'package:timer_builder/timer_builder.dart';

import '../widgets/tunnel_show_view.dart';

class TunnelShowScreen extends StatefulWidget {
  final String tunnelName;

  const TunnelShowScreen({super.key, required this.tunnelName});

  @override
  State<TunnelShowScreen> createState() => _TunnelShowScreenState();
}

class _TunnelShowScreenState extends State<TunnelShowScreen> {
  late Future<V1Tunnel> _tunnelFuture;

  bool _isPollingComplete = true;

  Future<V1Tunnel> _pollGetTunnelFuture(BuildContext context) {
    if (!_isPollingComplete) {
      return _tunnelFuture;
    }

    return _refreshGetTunnelFuture(context);
  }

  Future<V1Tunnel> _refreshGetTunnelFuture(BuildContext context) {
    _isPollingComplete = false;
    _tunnelFuture = ContextScope.of(context)
        .apiService
        .getTunnel(widget.tunnelName)
        .whenComplete(() => _isPollingComplete = true);
    return _tunnelFuture;
  }

  @override
  Widget build(BuildContext context) {
    return TimerBuilder.periodic(
      const Duration(seconds: 4),
      builder: (context) {
        return FutureBuilder<V1Tunnel>(
          future: _pollGetTunnelFuture(context),
          builder: (context, snapshot) {
            Widget body = CircularProgressIndicator(
              color: Theme.of(context).iconTheme.color,
            );

            if (snapshot.hasData) {
              body = TunnelShowView(
                  tunnel: snapshot.data!,
                  tunnelUpdated: () {
                    setState(() {
                      _refreshGetTunnelFuture(context);
                    });
                  });
            } else if (snapshot.hasError) {
              body = const Tooltip(
                message: 'Internal error',
                child: Icon(
                  Icons.error_rounded,
                  color: Colors.red,
                ),
              );
            }

            return Center(child: body);
          },
        );
      },
    );
  }
}
