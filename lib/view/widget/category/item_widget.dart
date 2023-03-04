import 'package:flutter/material.dart';
import 'package:todo/core/constant/color.dart';

class CategoryItem extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color color;
  final VoidCallback onPressed;

  const CategoryItem({
    Key? key,
    required this.icon,
    required this.text,
    required this.color,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            width: 64,
            height: 64,
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: color,
                border: Border.all(),
                borderRadius: const BorderRadius.all(Radius.circular(4))),
            child: IconButton(
              icon: Icon(icon),
              onPressed: onPressed,
            ),
          ),
          Text(
            text,
            style: const TextStyle(color: AppColor.textColor),
          )
        ],
      ),
    );
  }
}
