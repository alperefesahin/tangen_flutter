import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tangen_flutter/core/constants/enums.dart';
import 'package:tangen_flutter/features/dashboard/dashboard_view.dart';
import 'package:tangen_flutter/features/details/details_view.dart';
import 'package:tangen_flutter/features/login/login_view.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');

class AppRouter {
  final router = GoRouter(
    navigatorKey: _rootNavigatorKey,
    debugLogDiagnostics: true,
    initialLocation: RouterEnums.login.routeName,
    routes: [
      GoRoute(
        path: RouterEnums.login.routeName,
        builder: (context, state) => const LoginView(),
      ),
      GoRoute(
        path: RouterEnums.dashboard.routeName,
        builder: (context, state) => const DashboardView(),
      ),
      GoRoute(
        path: RouterEnums.details.routeName,
        builder: (context, state) => const DetailsView(),
      ),
    ],
  );
}
