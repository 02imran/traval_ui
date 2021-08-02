import 'package:flutter/material.dart';
import 'package:travel_ui/helpers/size_config/size_config.dart';
import 'package:travel_ui/screens/components/app_bar.dart';

import 'components/body.dart';
import 'components/bottom_nav_bar.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ///call init function to maintain the size

    ScreenSize().init(context);
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: buildAppBar(isTranparent: true),
      body: Body(),
      bottomNavigationBar: BtmNavBar(),
    );
  }
}
