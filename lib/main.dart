import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:astra_dashboard/app.dart';
import 'package:astra_dashboard/src/core/provider/auth_provider.dart';
import 'package:go_router/go_router.dart';

import 'src/core/constant/repository/index.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  registerRepositories();
  await AuthProvider.init();
  if (kIsWeb) {
    GoRouter.setUrlPathStrategy(UrlPathStrategy.path);
  }
  runApp(AdminDashboardApp());
  // return;
  // runZonedGuarded(() async {
  //   await Sentry.init(
  //     (options) {
  //       options.dsn = "";
  //     },
  //     appRunner: () => runApp(AdminTemplateApp()),
  //   );
  // }, (exception, stackTrace) async {
  //   errorLog("RunZonedGuard error: $exception", stackTrace);
  // });
}
