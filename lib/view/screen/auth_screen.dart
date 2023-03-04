import 'package:flutter/material.dart';
import 'package:todo/core/constant/image_asset.dart';
import 'package:todo/view/widget/auth/sizebox_widget.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Expanded(
          child: Image.asset(ImageAsset.iconLogo, width: 95, height: 80),
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 76, left: 24, right: 24),
          child: const SizeBoxWidget(),
        )
      ]),
    )));
  }
}
