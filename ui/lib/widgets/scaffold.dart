import 'package:adaptive_navigation/adaptive_navigation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';

import '../context.dart';

enum ScaffoldTab {
  tunnels,
  server,
  help,
}

class NavigationScaffold extends StatelessWidget {
  const NavigationScaffold({
    required this.selectedTab,
    required this.child,
    Key? key,
  }) : super(key: key);

  final ScaffoldTab selectedTab;

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveNavigationScaffold(
        appBar: _buildAppBar(
          context: context,
          actions: [
            Container(
              margin: const EdgeInsets.only(right: 15),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {
                        ContextScope.of(context).logOut();
                      },
                      tooltip: "Log out",
                      icon: Icon(
                        Icons.logout_rounded,
                        color: Theme.of(context).iconTheme.color,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        selectedIndex: selectedTab.index,
        persistentFooterButtons: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: _getScreenWidth(context),
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: Text('© ${DateTime.now().year} GuardLlama.'),
                        ),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 3.0),
                              child: IconButton(
                                hoverColor: Colors.transparent,
                                icon: const ImageIcon(AssetImage(
                                    'assets/images/guardllama-icon.png')),
                                onPressed: () => launchUrl(
                                    Uri.parse('https://guardllama.net')),
                              ),
                            ),
                            IconButton(
                              hoverColor: Colors.transparent,
                              icon: Icon(
                                FontAwesomeIcons.github,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                              onPressed: () => launchUrl(Uri.parse(
                                  'https://github.com/guardllamanet/guardllma')),
                            ),
                            IconButton(
                              hoverColor: Colors.transparent,
                              icon: Icon(
                                FontAwesomeIcons.twitter,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                              onPressed: () => launchUrl(Uri.parse(
                                  'https://twitter.com/guardllamanet')),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: SizedBox(
                  width: _getScreenWidth(context),
                  child: child,
                ),
              ),
            ],
          ),
        ),
        onDestinationSelected: (int idx) {
          switch (ScaffoldTab.values[idx]) {
            case ScaffoldTab.tunnels:
              context.go('/tunnels');
              break;
            case ScaffoldTab.server:
              context.go('/server');
              break;
            case ScaffoldTab.help:
              launchUrl(Uri.parse('https://guardllama.net/docs/intro/'));
              break;
          }
        },
        includeBaseDestinationsInMenu: true,
        navigationTypeResolver: (context) {
          if (MediaQuery.of(context).size.width > 600) {
            return NavigationType.drawer;
          } else {
            return NavigationType.bottom;
          }
        },
        drawerHeader: _buildAppBar(
          context: context,
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () => Navigator.pop(context),
          ),
        ),
        destinations: const [
          AdaptiveScaffoldDestination(
            title: 'Tunnels',
            icon: Icons.vpn_lock_rounded,
          ),
          AdaptiveScaffoldDestination(
            title: 'Server',
            icon: Icons.computer_rounded,
          ),
          AdaptiveScaffoldDestination(
            title: 'Help',
            icon: Icons.help_rounded,
          ),
        ],
      ),
    );
  }

  AdaptiveAppBar _buildAppBar(
      {required BuildContext context, List<Widget>? actions, Widget? leading}) {
    return AdaptiveAppBar(
      backgroundColor: Colors.transparent,
      bottomOpacity: 0,
      iconThemeData: const IconThemeData(color: Colors.black),
      toolbarHeight: 80,
      elevation: 0,
      titleSpacing: 0,
      centerTitle: false,
      title: Padding(
        padding: EdgeInsets.only(
            left: MediaQuery.of(context).size.width > 600 ? 0 : 28, bottom: 12),
        child: InkWell(
          child: Image.asset(
            'assets/images/guardllama-logo.png',
            width: 200,
          ),
          onTap: () => context.go('/'),
        ),
      ),
      leading: leading,
      actions: actions,
    );
  }

  double _getScreenWidth(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.9;
    if (width > 1280) width = 1280;

    return width;
  }
}
