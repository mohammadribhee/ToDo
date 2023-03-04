import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo/core/constant/color.dart';
import 'package:todo/core/constant/routes_app.dart';
import 'package:todo/data/datasource/database_helper.dart';
import 'package:todo/view/widget/category/item_widget.dart';

class DialogCategory {
  static final DatabaseHelper databaseHelper = DatabaseHelper();

  static Future<void> show(BuildContext context) {
    // add Future<void> return type
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: AppColor.darkGray,
          insetPadding: EdgeInsets.zero,
          title: const Text(
            'Choose Category',
            textAlign: TextAlign.center,
            style: TextStyle(color: AppColor.textColor),
          ),
          content: SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Divider(
                  color: Colors.grey,
                  thickness: 1,
                  indent: 20,
                  endIndent: 20,
                ),
                GridView.count(
                  crossAxisCount: 3,
                  shrinkWrap: true,
                  children: [
                    CategoryItem(
                      icon: Icons.add,
                      text: "Create New",
                      color: const Color(0xFF80FFD1),
                      onPressed: () {
                        Get.toNamed(AppRoute.category);
                      },
                    ),
                  ],
                ),
                const SizedBox(
                  width: 40,
                  height: 40,
                ),
                Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        width: 200,
                        height: 50,
                        child: TextButton(
                          onPressed: () {
                            // Your code here
                            Get.back();
                          },
                          child: const Text(
                            'Cancel',
                            style: TextStyle(
                                fontSize: 20, color: AppColor.buttonTheme),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
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
                          'Choose',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                            letterSpacing: 2.0,
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
