import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;

  const MyDrawer({required this.scaffoldKey, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: Colors.blue,
        width: MediaQuery.of(context).size.width * 0.6,
        elevation: 1,
        child: Center(
            child: MaterialButton(
                height: 40,
                color: Colors.black54,
                onPressed: scaffoldKey.currentState!.closeDrawer,
                child: const Text("Close Drawer", style: TextStyle(color: Colors.white)))));
  }
}
