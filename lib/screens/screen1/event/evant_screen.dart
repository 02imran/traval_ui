import 'package:flutter/material.dart';
import 'package:travel_ui/screens/components/app_bar.dart';
import 'package:travel_ui/screens/screen1/components/bottom_nav_bar.dart';
import 'package:travel_ui/screens/screen1/event/components/body.dart';

class EventScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EvantBody(),
      appBar: buildAppBar(title: 'New Event'),
      bottomNavigationBar: BtmNavBar(),
    );
  }
}
