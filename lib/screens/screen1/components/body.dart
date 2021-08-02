import 'package:flutter/material.dart';
import 'home_header.dart';
import 'popular_places.dart';
import 'top_travelar.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          HomeHeader(),
          PopularPlaces(),
          TopTravaler(),
        ],
      ),
    );
  }
}

