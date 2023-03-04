import 'package:flutter/material.dart';
import 'package:todo/core/constant/image_asset.dart';

class RowHome extends StatelessWidget {
  const RowHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
            child: Text(
          'Home',
          textAlign: TextAlign.center,
        )),
        Container(
            padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
            child: Image.asset(
              ImageAsset.iconCalendar,
              alignment: Alignment.centerRight,
            )),
      ],
    );
  }
}
