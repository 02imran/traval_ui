import 'package:flutter/material.dart';
import 'package:travel_ui/constants.dart';
import 'package:travel_ui/helpers/size_config/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.center,
          children: [
            Image.asset(
              'assets/images/home_bg.png',
              height: getProportionateScreenHeight(315),
              fit: BoxFit.cover,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: getProportionateScreenHeight(80)),
                Text(
                  'Traval Hour',
                  style: TextStyle(
                    fontSize: getProportionateScreenHeight(60),
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    height: 0.5,
                  ),
                ),
                Text(
                  'Travaller community app',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: getProportionateScreenWidth(16)),
                ),
              ],
            ),
            Positioned(
              bottom: getProportionateScreenHeight(-25),
              child: SearchField(),
            )
          ],
        ),
      ],
    );
  }
}

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
