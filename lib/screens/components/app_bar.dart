import 'package:flutter/material.dart';

import '../../constants.dart';

AppBar buildAppBar({bool isTranparent = false, String title}) {
  return AppBar(
    title: Text(
      title == null ? '' : title,
      style: TextStyle(
        color: kTextColor,
      ),
    ),
    centerTitle: true,
    backgroundColor: isTranparent ? Colors.transparent : Colors.white,
    elevation: 0,
    leading: IconButton(
      onPressed: () {},
      icon: Icon(
        Icons.menu,
        color: kIconColor,
      ),
    ),
    actions: [
      IconButton(
        onPressed: () {},
        icon: ClipOval(child: Image.asset('assets/images/profile.png')),
      )
    ],
  );
}
