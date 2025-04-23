import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:cotidiapp/layout/layout_scaffold.dart';
// Importe suas telas
import 'package:cotidiapp/pages/home.dart';

final GoRouter router = GoRouter(
  initialLocation: '/',
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return LayoutScaffold(navigationShell: navigationShell);
      },
      branches: [
        // Branch Home
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/',
              builder: (context, state) =>  HomePage(),
            ),
          ],
        ),
        // Branch Relógio
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/clock',
              builder: (context, state) =>  HomePage(),
            ),
          ],
        ),
        // Branch Planner
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/planner',
              builder: (context, state) =>  HomePage(),
            ),
          ],
        ),
        // Branch Configurações
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/settings',
              builder: (context, state) => HomePage(),
            ),
          ],
        ),
      ],
    ),
  ],
);