import 'package:flutter/material.dart';
import 'package:todo/routes.dart';
import 'package:todo/view/screen/auth_screen.dart';
import 'package:get/get.dart';

import 'core/constant/color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          floatingActionButtonTheme: const FloatingActionButtonThemeData(
            backgroundColor: AppColor.buttonTheme,
          ),
          scaffoldBackgroundColor: AppColor.backgroundColor,
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor:
                  AppColor.buttonTheme, // set the background color of buttons
            ),
          ),
          textTheme: const TextTheme(
            bodyText1: TextStyle(
                fontSize: 20, fontFamily: 'Lato', color: AppColor.textColor),
            bodyText2: TextStyle(
                fontSize: 20, fontFamily: 'Lato', color: AppColor.textColor),
            headline1: TextStyle(
                fontSize: 20, fontFamily: 'Lato', color: AppColor.textColor),
            headline2: TextStyle(
                fontSize: 20, fontFamily: 'Lato', color: AppColor.textColor),
            // Add more styles as needed...
          ),
        ),
        home: const AuthScreen(),
        routes: routes);
  }
}
