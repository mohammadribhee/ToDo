import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo/core/constant/color.dart';
import 'package:todo/view/widget/category/dialogCategory_widget.dart';
import 'package:todo/view/widget/home/iconButton_widget.dart';
import 'textField_widget.dart';

class DialogWidget extends StatelessWidget {
  const DialogWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () => {Get.back()},
        child: Dialog(
          insetPadding: EdgeInsets.zero,
          backgroundColor: AppColor.darkGray,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                    padding: EdgeInsets.all(
                        16.0), // Add 16 pixels of padding on all sides
                    child: Text("Add Task", textAlign: TextAlign.end)),
                const Padding(
                    padding: EdgeInsets.all(
                        16.0), // Add 16 pixels of padding on all sides
                    child: TextFieldWidget(text: "Title")),
                const Padding(
                  padding: EdgeInsets.all(
                      16.0), // Add 16 pixels of padding on all sides
                  child: TextFieldWidget(text: "Description"),
                ),
                Row(
                  //mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButtonWidget(
                        color: AppColor.textColor,
                        icon: const Icon(Icons.timer_outlined),
                        callback: () => DialogCategory.show(context)),
                    IconButtonWidget(
                        color: AppColor.textColor,
                        icon: const Icon(Icons.local_offer_outlined),
                        callback: () => DialogCategory.show(context)),
                    Expanded(
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: IconButtonWidget(
                            color: AppColor.buttonTheme,
                            icon: const Icon(Icons.send_outlined),
                            callback: () => DialogCategory.show(context)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
