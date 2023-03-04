import 'package:flutter/cupertino.dart';
import 'package:todo/core/constant/routes_app.dart';
import 'package:todo/view/screen/home_screen.dart';
import 'view/screen/category_screen.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoute.home: (context) => const HomeScreen(),
  AppRoute.category: (context) => const CategoryScreen()
};
