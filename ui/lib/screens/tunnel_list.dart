import 'dart:async';

import 'package:flutter/material.dart';
import 'package:guardllama/context.dart';
import 'package:guardllama_api/guardllama_api.dart';
import 'package:timer_builder/timer_builder.dart';

import '../widgets/tunnel_list_view.dart';

class TunnelListScreen extends StatefulWidget {
  const TunnelListScreen({super.key});

  @override
  State<TunnelListScreen> createState() => _TunnelListScreenState();
}

class _TunnelListScreenState extends State<TunnelListScreen> {
  late Future<List<V1Tunnel>> _tunnelsFuture;

  bool _isPollingComplete = true;

  Future<List<V1Tunnel>> _createListTunnelsFuture(context) {
    return ContextScope.of(context)
        .apiService
        .listTunnels()
        .whenComplete(() => _isPollingComplete = true);
  }

  @override
  Widget build(BuildContext context) {
    return TimerBuilder.periodic(
      const Duration(seconds: 2),
      builder: (context) {
        if (_isPollingComplete) {
          _isPollingComplete = false;
          _tunnelsFuture = _createListTunnelsFuture(context);
        }

        return FutureBuilder<List<V1Tunnel>>(
          future: _tunnelsFuture,
          builder: (context, snapshot) {
            Widget body = CircularProgressIndicator(
              color: Theme.of(context).iconTheme.color,
            );

            if (snapshot.hasData) {
              var tunnels = snapshot.data!;
              tunnels.sort((a, b) {
                int r = -a.createdAt!.compareTo(b.createdAt!);
                if (r == 0) {
                  return a.name.compareTo(b.name);
                }

                return r;
              });

              body = TunnelListView(tunnels: tunnels);
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
