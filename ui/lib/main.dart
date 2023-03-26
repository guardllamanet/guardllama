import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:guardllama/context.dart';
import 'package:guardllama/screens/server.dart';
import 'package:guardllama/screens/tunnel_show_screen.dart';
import 'package:guardllama/widgets/scaffold.dart';
import 'package:talker_flutter/talker_flutter.dart';

import 'screens/page_not_found.dart';
import 'screens/log_in.dart';
import 'screens/tunnel_list.dart';

void main() {
  final talker = TalkerFlutter.init();
  runZonedGuarded(
    () => runApp(GuardLlamaApp(talker: talker)),
    (error, stack) {
      talker.handle(error, stack, 'Uncaught app exception');
    },
  );
}

class GuardLlamaApp extends StatelessWidget {
  final Talker talker;

  GuardLlamaApp({super.key, required this.talker});

  late final Context _context = Context(talker: talker);

  Page<dynamic> _buildPage(
          BuildContext context, GoRouterState state, Widget child) =>
      _FadeTransitionPage(
        key: state.pageKey,
        child: child,
      );

  Page<dynamic> _buildScaffoldTab(BuildContext context, GoRouterState state,
          ScaffoldTab selectedTab, Widget child) =>
      _FadeTransitionPage(
        key: state.pageKey,
        child: NavigationScaffold(
          selectedTab: selectedTab,
          child: TalkerWrapper(
            talker: talker,
            options: const TalkerWrapperOptions(
              enableErrorAlerts: true,
            ),
            child: child,
          ),
        ),
      );

  late final _router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        redirect: (_, __) => '/tunnels',
      ),
      GoRoute(
        path: '/login',
        pageBuilder: (BuildContext context, GoRouterState state) => _buildPage(
          context,
          state,
          LogInScreen(
            onLogIn: (Credentials credentials) {
              return ContextScope.of(context).logIn(credentials.token);
            },
          ),
        ),
      ),
      GoRoute(
        path: '/tunnels',
        pageBuilder: (BuildContext context, GoRouterState state) =>
            _buildScaffoldTab(
                context, state, ScaffoldTab.tunnels, const TunnelListScreen()),
      ),
      GoRoute(
        path: '/tunnels/:name',
        pageBuilder: (BuildContext context, GoRouterState state) =>
            _buildScaffoldTab(
          context,
          state,
          ScaffoldTab.tunnels,
          TunnelShowScreen(tunnelName: state.params['name']!),
        ),
      ),
      GoRoute(
        path: '/server',
        pageBuilder: (BuildContext context, GoRouterState state) =>
            _buildScaffoldTab(
                context, state, ScaffoldTab.server, const ServerScreen()),
      ),
    ],
    errorPageBuilder: (context, state) => _FadeTransitionPage(
      key: state.pageKey,
      child: const PageNotFoundScreen(),
    ),
    redirect: _guard,
    refreshListenable: _context,
    debugLogDiagnostics: true,
  );

  FutureOr<String?> _guard(BuildContext context, GoRouterState state) {
    return _context.isLoggedIn().then((loggedIn) {
      final loggingIn = state.location == '/login';

      if (!loggedIn && !loggingIn) {
        return '/login';
      } else if (loggedIn && loggingIn) {
        return '/tunnels';
      }

      // no redirect
      return null;
    }).onError((error, stackTrace) {
      talker.handle(error!, stackTrace);
      return '/login';
    });
  }

  @override
  Widget build(BuildContext context) {
    return ContextScope(
      notifier: _context,
      child: MaterialApp.router(
        title: 'GuardLlama',
        routerConfig: _router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
          primaryColor: const Color(0xff4a73d5),
          colorScheme: ColorScheme.light(
            primary: const Color(0xff4a73d5),
            background: Colors.grey.shade100,
          ),
          fontFamily: 'Noto Sans',
          fontFamilyFallback: const ['sans-serif'],
          iconTheme: const IconThemeData(
            color: Color(0xff4a73d5),
            size: 24.0,
          ),
          textTheme: const TextTheme(
            headlineLarge: TextStyle(
              fontFamily: 'Raleway',
              fontWeight: FontWeight.w700,
            ),
            displayLarge: TextStyle(
              fontFamily: 'Raleway',
              fontWeight: FontWeight.w700,
            ),
            displayMedium: TextStyle(
              fontFamily: 'Raleway',
            ),
          ),
        ),
      ),
    );
  }
}

class _FadeTransitionPage extends CustomTransitionPage<void> {
  _FadeTransitionPage({
    required LocalKey key,
    required Widget child,
  }) : super(
            key: key,
            transitionsBuilder: (BuildContext context,
                    Animation<double> animation,
                    Animation<double> secondaryAnimation,
                    Widget child) =>
                FadeTransition(
                  opacity: animation.drive(_curveTween),
                  child: child,
                ),
            child: child);

  static final CurveTween _curveTween = CurveTween(curve: Curves.easeIn);
}
