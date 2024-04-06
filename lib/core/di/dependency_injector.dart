import 'package:get_it/get_it.dart';
import 'package:tangen_flutter/core/init/app_router.dart';

final getIt = GetIt.instance;

void injectionSetup() {
  getIt.registerFactory(() => AppRouter());
}
