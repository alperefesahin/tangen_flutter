import 'package:flutter/material.dart';
import 'package:tangen_flutter/core/di/dependency_injector.dart';
import 'package:tangen_flutter/core/init/app_router.dart';

void main() {
  injectionSetup();
  runApp(const AppWidget());
}

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final appRouterConfig = getIt<AppRouter>();

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: appRouterConfig.router,
    );
  }
}
