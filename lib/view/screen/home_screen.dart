import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo/core/constant/color.dart';
import 'package:todo/core/constant/image_asset.dart';
import 'package:todo/view/widget/home/dialog_widget.dart';
import 'package:todo/view/widget/home/row_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Future<void> addTask() async {
      return showDialog<void>(
        context: context,
        builder: (BuildContext context) => Container(
            color: AppColor.backgroundColor, child: const DialogWidget()),
      );
    }

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          addTask();
        },
        child: const Icon(Icons.add),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
              child: Column(mainAxisSize: MainAxisSize.max, children: [
        const SizedBox(width: double.infinity, height: 100, child: RowHome()),
        Image.asset(
          ImageAsset.iconToDo,
          width: 250,
          height: 250,
        ),
        const Text('What do you want to do today?'),
        const SizedBox(height: 10),
        const Text('Tap + to add your tasks', style: TextStyle(fontSize: 20)),
      ]))),
    );
  }
}
