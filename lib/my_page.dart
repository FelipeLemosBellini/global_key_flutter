import 'package:flutter/material.dart';
import 'package:using_global_key/widgets/my_app_bar.dart';
import 'package:using_global_key/widgets/my_drawer.dart';
import 'package:using_global_key/widgets/my_material_button.dart';
import 'package:using_global_key/widgets/my_scaffold.dart';

class MyPage extends StatefulWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  int increment = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        drawer: MyDrawer(scaffoldKey: scaffoldKey),
        appBar: MyAppBar(scaffoldKey: scaffoldKey, child: Text("")),
        body: Center(
            child: MaterialButton(
                child: Text(increment.toString()),
                onPressed: () => scaffoldKey.currentState!.openDrawer())));
  }
}
