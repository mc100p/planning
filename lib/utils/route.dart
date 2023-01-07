import 'dart:io';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:planning/pages/homepage/homepage.dart';
import 'package:planning/pages/planning/planning.dart';
import 'package:planning/utils/magic_string.dart';

class RouteGenerator {
  GoRouter router = GoRouter(
    initialLocation: '/',
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        name: RouteNames.homepage,
        path: '/',
        builder: (context, state) => MyHomePage(),
        routes: [
          GoRoute(
            name: RouteNames.planning,
            path: 'sessionInfo',
            builder: (context, state) {
              return Planning();
            },
            pageBuilder: (context, state) {
              return buildPageWithDefaultTransition<void>(
                context: context,
                state: state,
                child: Planning(),
              );
            },
          ),
        ],
      ),
    ],
    errorBuilder: (context, state) => ErrorRoute(),
    errorPageBuilder: (context, state) => MaterialPage(child: ErrorRoute()),
  );
}

class ErrorRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Error - 400"),
        leading: IconButton(
          icon: IconButton(
            icon: Platform.isIOS
                ? Icon(Icons.arrow_back_ios)
                : Icon(Icons.arrow_back_outlined),
            onPressed: () => Navigator.pop(context),
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Center(
        child: Text(
          "Page Not Found....",
          style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

CustomTransitionPage buildPageWithDefaultTransition<T>({
  required BuildContext context,
  required GoRouterState state,
  required Widget child,
}) {
  return CustomTransitionPage<T>(
    key: state.pageKey,
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) =>
        ScaleTransition(scale: animation, child: child),
  );
}
