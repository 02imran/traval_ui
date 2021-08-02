import 'package:flutter/material.dart';
import 'package:travel_ui/helpers/size_config/size_config.dart';

import '../../../constants.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    Key key,
    @required this.title,
    @required this.press,
  }) : super(key: key);

  final String title;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(kDefaultPadding),
          vertical: getProportionateScreenHeight(35)),
      child: Row(
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Spacer(),
          GestureDetector(
            onTap: press,
            child: Text(
              'See all',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
