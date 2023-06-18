import 'package:flutter/material.dart';

class MyScaffold extends StatelessWidget {
  final PreferredSizeWidget? appBar;
  final Widget? drawer;
  final Widget? body;
  final GlobalKey<ScaffoldState> scaffoldKey;

  const MyScaffold({
    this.appBar,
    this.body,
    this.drawer,
    required this.scaffoldKey,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        appBar: appBar,
        body: body,
        drawer: drawer,
        backgroundColor: Colors.blue,
        floatingActionButton: FloatingActionButton(
          onPressed: () => scaffoldKey.currentState!.openDrawer(),
          backgroundColor: Colors.black54,
          child: const Icon(Icons.menu, color: Colors.white),
        ));
  }
}
