import 'package:flutter/material.dart';
import 'package:travel_ui/helpers/size_config/size_config.dart';
import 'package:travel_ui/models/travel_spot.dart';
import 'package:travel_ui/screens/screen1/components/place_card.dart';

class EvantBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Wrap(
            alignment: WrapAlignment.spaceBetween,
            runSpacing: 20,
            children: [
              ...List.generate(
                travelSpots.length,
                (index) => PlaceCard(
                  travaleSpot: travelSpots[index],
                  press: () {},
                  isFullCard: true,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
