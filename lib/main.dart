import 'package:firebase_core/firebase_core.dart';
import 'package:my_wish_list/Controller/is_signedin.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'Controller/instance_binding.dart';
import 'Util/routes.dart';
import 'Util/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ],
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: InstanceBinding(),
      theme: theme(),
      home: IsSignedIn(),
      debugShowCheckedModeBanner: false,
      builder: (context, widget) => ResponsiveWrapper.builder(
          BouncingScrollWrapper.builder(context, widget),
          maxWidth: 1200,
          minWidth: 450,
          defaultScale: true,
          breakpoints: [
            ResponsiveBreakpoint.resize(
              450,
              name: MOBILE,
              scaleFactor: 1.3,
            ),
            ResponsiveBreakpoint.autoScale(
              800,
              name: TABLET,
              scaleFactor: 1.5,
            ),
            ResponsiveBreakpoint.autoScale(
              1000,
              name: TABLET,
              scaleFactor: 1.5,
            ),
            ResponsiveBreakpoint.resize(
              1200,
              name: DESKTOP,
              scaleFactor: 1.5,
            ),
            ResponsiveBreakpoint.autoScale(
              2460,
              name: "4K",
              scaleFactor: 1.5,
            ),
          ]),
      initialRoute: '/',
      getPages: AppRoutes.routes,
    );
  }
}
