import 'package:flutter/material.dart';
import 'components/sidebar_row.dart';
import 'model/sidebar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return Container();
    return MaterialApp(
        debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: SidebarRow(item: sidebarItem[3])
        )
      )
    );
  }
}