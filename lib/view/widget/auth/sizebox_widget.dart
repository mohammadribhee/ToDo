import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo/core/constant/routes_app.dart';
import 'package:todo/core/services/finger_print_service.dart';

class SizeBoxWidget extends StatelessWidget {
  const SizeBoxWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 328,
        height: 48,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.only(
              top: 12.0,
              right: 24.0,
              bottom: 12.0,
              left: 24.0,
            ),
          ),
          child: const Text(
            'Unlock App',
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.white,
              letterSpacing: 2.0,
            ),
          ),
          onPressed: () async {
            final authenticate = await Fingerprint.authenticate();
            if (authenticate) {
              Get.offAllNamed(AppRoute.home);
            } else {}
          },
        ));
  }
}
