import 'package:flutter/material.dart';
import 'package:todo/core/constant/color.dart';

class TextFieldWidget extends StatelessWidget {
  final String text;
  const TextFieldWidget({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(color: AppColor.textColor),
      decoration: InputDecoration(
        hintText: text,
        hintStyle: const TextStyle(color: AppColor.hintText),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: AppColor.textColor),
        ),
      ),
    );
  }
}
