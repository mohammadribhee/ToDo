import 'package:flutter/material.dart';
import 'package:flutter_iconpicker/flutter_iconpicker.dart';

class IconpickerWidget extends StatefulWidget {
  final VoidCallback onPressed;
  const IconpickerWidget({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  IconpickerWidgetState createState() => IconpickerWidgetState();
}

class IconpickerWidgetState extends State<IconpickerWidget> {
  _pickIcon() async {
    IconData? icon = await FlutterIconPicker.showIconPicker(context,
        iconPackModes: [IconPack.cupertino]);

    setState(() {});

    debugPrint('Picked Icon:  $icon');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: _pickIcon,
          child: const Text('Open IconPicker'),
        ),
      ),
    );
  }
}
