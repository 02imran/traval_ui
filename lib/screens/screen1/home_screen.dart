import 'package:flutter/material.dart';
import 'package:travel_ui/constants.dart';
import 'package:travel_ui/helpers/size_config/size_config.dart';

import 'components/body.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ///call init function to maintain the size
    
    ScreenSize().init(context);
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.menu,
          color: kIconColor,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: ClipOval(child: Image.asset('assets/images/profile.png')),
        )
      ],
    );
  }
}
