

import 'package:flutter/material.dart';
import 'package:travel_ui/helpers/size_config/size_config.dart';

import '../../../constants.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenHeight(50),
      width: getProportionateScreenWidth(300),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        boxShadow: [kDefualtShadow],
        border: Border.all(
          color: Colors.black.withOpacity(0.2),
        ),
        color: Colors.white,
      ),
      child: TextField(
        onChanged: (value) {},
        decoration: InputDecoration(
            hintText: 'Search your destination ...',
            contentPadding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenHeight(15),
                vertical: getProportionateScreenHeight(7)),
            enabledBorder: InputBorder.none,
            suffixIcon: Icon(Icons.search)),
      ),
    );
  }
}
