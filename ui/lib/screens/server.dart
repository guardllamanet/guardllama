import 'package:flutter/material.dart';
import 'package:guardllama/context.dart';
import 'package:guardllama_api/guardllama_api.dart';

import '../widgets/server_view.dart';

class ServerScreen extends StatefulWidget {
  const ServerScreen({super.key});

  @override
  State<ServerScreen> createState() => _ServerScreenState();
}

class _ServerScreenState extends State<ServerScreen> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<V1Server>(
      future: ContextScope.of(context).apiService.getServer(),
      builder: (context, snapshot) {
        Widget body = CircularProgressIndicator(
          color: Theme.of(context).iconTheme.color,
        );

        if (snapshot.hasData) {
          var server = snapshot.data!;

          body = ServerView(server: server);
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
  }
}
