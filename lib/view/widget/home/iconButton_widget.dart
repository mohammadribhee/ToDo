import 'package:flutter/material.dart';

class IconButtonWidget extends StatelessWidget {
  final Color color;
  final Icon icon;
  final Future<void> Function() callback;
  const IconButtonWidget(
      {Key? key,
      required this.color,
      required this.icon,
      required this.callback})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: icon,
      color: color,
      onPressed: () async {
        await callback();
      },
    );
  }
}
