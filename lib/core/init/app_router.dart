import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tangen_flutter/features/login/login_view.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');

class AppRouter {
  final router = GoRouter(
    navigatorKey: _rootNavigatorKey,
    debugLogDiagnostics: true,
    initialLocation: "/",
    routes: [
      GoRoute(
        name: "/",
        path: "/",
        builder: (context, state) => const LoginView(),
      ),
    ],
  );
}
