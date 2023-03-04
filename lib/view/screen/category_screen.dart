import 'package:flutter/material.dart';
import 'package:flutter_iconpicker/flutter_iconpicker.dart';
import 'package:get/get.dart';
import 'package:todo/core/constant/color.dart';
import 'package:todo/view/widget/category/textField_widget.dart';
import 'package:todo/view/widget/category/text_widget.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  CategoryScreenState createState() => CategoryScreenState();
}

class CategoryScreenState extends State<CategoryScreen> {
  IconData myIcon = Icons.favorite;
  _pickIcon() async {
    IconData? icon = await FlutterIconPicker.showIconPicker(context,
        iconPackModes: [IconPack.cupertino]);

    setState(() {
      myIcon = IconData(icon!.codePoint,
          fontFamily: 'MaterialIcons' // Unicode code point for the icon
          );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Expanded(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
            child: TextWidget(text: "Create new category", size: 20),
          ),
          const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
              child: TextWidget(text: "Category name :", size: 16)),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
            child: TextFieldWidgetcategory(text: "Category name"),
          ),
          const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
              child: TextWidget(text: "Category icon :", size: 16)),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      AppColor.darkGray, // set the background color of buttons
                ),
                onPressed: () {
                  _pickIcon();
                },
                child: const TextWidget(
                    text: "Choose icon from library", size: 12)),
          ),
          Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
              child: Container(
                color: AppColor.darkGray,
                child: IconButton(
                  icon: Icon(myIcon),
                  iconSize: 40,
                  color: Colors.white,
                  onPressed: () {},
                ),
              )),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
            child: Text("Category color :"),
          ),
          Expanded(
              child: Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              children: [
                Expanded(
                  child: SizedBox(
                      width: 200,
                      height: 150,
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
                      )),
                ),
                Expanded(
                    child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: TextButton(
                          onPressed: () {
                            // Your code here
                            Get.back();
                          },
                          style: ButtonStyle(
                            fixedSize: MaterialStateProperty.all<Size>(
                              const Size(
                                  50, 50), // set the desired width and height
                            ),
                            backgroundColor: MaterialStateProperty.all<Color>(
                              AppColor.buttonTheme,
                            ),
                          ),
                          child: const Text(
                            'Create Category',
                            style: TextStyle(
                              fontSize: 20,
                              color: AppColor.textColor,
                            ),
                          ),
                        ))),
              ],
            ),
          )),
        ],
      )),
    ));
  }
}
