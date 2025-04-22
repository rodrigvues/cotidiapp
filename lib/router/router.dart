
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:cotidiapp/layout/layout_scaffold.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');

final router = GoRouter(
    navigatorKey: _rootNavigatorKey,
    routes: [
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigatioShell) => LayoutScaffold(
          navigatioShell: navigatioShell,
        ),

      )
    ],
);