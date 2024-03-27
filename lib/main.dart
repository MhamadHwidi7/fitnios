import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:laundry_app/core/router/app_router.dart';

void main() async {
  runApp(DevicePreview(enabled: true, builder: (context) => const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Laundry App',
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      routerConfig: AppRouter.router,
    );
  }
}
