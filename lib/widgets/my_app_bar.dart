import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSize {
  final Widget child;
  final GlobalKey<ScaffoldState> scaffoldKey;

  const MyAppBar({required this.child, required this.scaffoldKey, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: preferredSize.height + MediaQuery.of(context).padding.top,
        color: Colors.black54,
        child: Padding(
          padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
          child: Row(children: [
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: IconButton(
                    icon: const Icon(Icons.menu, color: Colors.white),
                    onPressed: () => scaffoldKey.currentState?.openDrawer())),
            child
          ]),
        ));
  }

  @override
  Size get preferredSize => const Size.fromHeight(48);
}
