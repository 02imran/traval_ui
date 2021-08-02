

import 'package:flutter/material.dart';
import 'package:travel_ui/helpers/size_config/size_config.dart';
import 'package:travel_ui/models/user.dart';

class UserCard extends StatelessWidget {
  const UserCard({
    Key key,
    this.user,
  }) : super(key: key);
  final User user;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipOval(
          child: Image.asset(
            user.image,
            height: getProportionateScreenHeight(50),
            width: getProportionateScreenWidth(50),
            fit: BoxFit.cover,
          ),
        ),
        Text(
          user.name,
          style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
        )
      ],
    );
  }
}
