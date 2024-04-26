import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../utils/ColorPage.dart';
import '../utils/RouteManagers.dart';
import '../utils/Routes.dart';

class MonApplication extends StatelessWidget {
  const MonApplication({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    return ResponsiveSizer(builder: (context, orientation, screenType) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.SplashPage,
        onGenerateRoute: RoutesManager.route,
        theme: ThemeData(
            appBarTheme: AppBarTheme(
                iconTheme: IconThemeData(color: ColorPages.COLOR_PRINCIPALE))),
      );
    });
  }
}
