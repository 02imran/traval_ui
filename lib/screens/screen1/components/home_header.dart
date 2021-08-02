

import 'package:flutter/material.dart';
import 'package:travel_ui/helpers/size_config/size_config.dart';

import 'search_field.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Image.asset(
          'assets/images/home_bg.png',
          height: getProportionateScreenHeight(315),
          fit: BoxFit.cover,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: getProportionateScreenHeight(80)),
            Text(
              'Traval Hour',
              style: TextStyle(
                fontSize: getProportionateScreenHeight(60),
                color: Colors.white,
                fontWeight: FontWeight.bold,
                height: 0.5,
              ),
            ),
            Text(
              'Travaller community app',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: getProportionateScreenWidth(16)),
            ),
          ],
        ),
        Positioned(
          bottom: getProportionateScreenHeight(-25),
          child: SearchField(),
        )
      ],
    );
  }
}

