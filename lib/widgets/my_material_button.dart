import 'package:flutter/material.dart';

class MyMaterialButton extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;

  const MyMaterialButton({required this.scaffoldKey, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        color: Colors.black26,
        onPressed: () => scaffoldKey.currentState!.openDrawer(),
        child: const Text("Open SideBar", style: TextStyle(color: Colors.white)));
  }
}
