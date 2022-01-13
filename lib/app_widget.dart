import 'package:flutter/material.dart';
import 'package:payflow/modules/login/login_page.dart';
import 'package:payflow/modules/splash/splash_page.dart';
import 'package:payflow/themes/app_colors.dart';

import 'modules/home/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'PayFlow',
        theme: ThemeData(primaryColor: AppColors.primary),
        initialRoute: "/splash",
        routes: {
          //Rotas nomeadas.
          "/splash": (context) => SplashPage(),
          "/home": (context) => HomePage(),
          "/login": (context) => LoginPage()

        });
  }
}
