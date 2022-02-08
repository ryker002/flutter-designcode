import 'package:flutter/material.dart';
import '../constants.dart';
import '../model/sidebar.dart';

class SidebarRow extends StatelessWidget {
  SidebarRow({Key? key, required this.item}) : super(key: key);

  final SidebarItem item;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 42.0,
          height: 42.0,
          padding: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14.0),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFF00AEFF),
                Color(0xFF0076FF),
              ],
            ),
          ),
          child: item.icon,
        ),
        SizedBox(width: 12),
        Container(
            child: Text(item.title, style: kCalloutLabelStyle,)
        ),
      ],
    );
  }
}