import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel_ui/helpers/size_config/size_config.dart';
import 'package:travel_ui/screens/screen1/event/evant_screen.dart';

import '../../../constants.dart';

class BtmNavBar extends StatelessWidget {
  const BtmNavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenHeight(60),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [kDefualtShadow],
        border: Border.all(color: kTextColor.withOpacity(0.2)),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            NavItem(
              icon: 'assets/icons/chat.svg',
              text: 'Chat',
              press: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => EventScreen()));
              },
            ),
            NavItem(
                icon: 'assets/icons/friendship.svg',
                text: 'Friendship',
                press: () {}),
            NavItem(
                icon: 'assets/icons/calendar.svg',
                text: 'Calendar',
                press: () {}),
          ],
        ),
      ),
    );
  }
}

class NavItem extends StatelessWidget {
  const NavItem({
    Key key,
    @required this.icon,
    @required this.text,
    this.press,
  }) : super(key: key);
  final String icon, text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        padding: EdgeInsets.all(getProportionateScreenHeight(5)),
        margin:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: Column(
          children: [
            SvgPicture.asset(
              icon,
              height: 25,
              color: kTextColor,
            ),
            Text(
              text,
              style: TextStyle(
                color: kTextColor,
                fontSize: 11,
              ),
            )
          ],
        ),
      ),
    );
  }
}
