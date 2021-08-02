import 'package:flutter/material.dart';
import 'package:travel_ui/helpers/size_config/size_config.dart';
import 'package:travel_ui/models/travel_spot.dart';
import 'place_card.dart';
import 'section_title.dart';

class PopularPlaces extends StatelessWidget {
  const PopularPlaces({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          press: () {},
          title: 'Right now at spark',
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                travelSpots.length,
                (index) => Padding(
                  padding:
                      EdgeInsets.only(left: getProportionateScreenWidth(20)),
                  child: PlaceCard(
                    press: () {},
                    travaleSpot: travelSpots[index],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
