import 'package:flutter/material.dart';
import 'package:travel_ui/helpers/size_config/size_config.dart';
import 'package:travel_ui/models/user.dart';
import '../../../constants.dart';
import 'section_title.dart';
import 'user_card.dart';

class TopTravaler extends StatelessWidget {
  const TopTravaler({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(title: 'Top travalers at sprak', press: () {}),
        Container(
          margin: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(kDefaultPadding)),
          padding: EdgeInsets.all(getProportionateScreenHeight(24)),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            boxShadow: [kDefualtShadow],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ...List.generate(
                topTravelers.length,
                (index) => UserCard(
                  user: topTravelers[index],
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: getProportionateScreenHeight(20),
        )
      ],
    );
  }
}
