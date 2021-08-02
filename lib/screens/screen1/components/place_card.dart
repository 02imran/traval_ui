import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:travel_ui/helpers/size_config/size_config.dart';
import 'package:travel_ui/models/travel_spot.dart';
import 'package:travel_ui/models/user.dart';

import '../../../constants.dart';

class PlaceCard extends StatelessWidget {
  const PlaceCard({
    Key key,
    @required this.travaleSpot,
    @required this.press,
    this.isFullCard = false,
  }) : super(key: key);
  final TravelSpot travaleSpot;
  final GestureTapCallback press;
  final bool isFullCard;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getProportionateScreenWidth(isFullCard ? 150 : 137),
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: isFullCard ? 1.09 : 1.29,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    travaleSpot.image,
                  ),
                ),
              ),
            ),
          ),
          Container(
            width: getProportionateScreenWidth(isFullCard ? 158 : 137),
            padding:
                EdgeInsets.all(getProportionateScreenHeight(kDefaultPadding)),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              boxShadow: [kDefualtShadow],
            ),
            child: Column(
              children: [
                Text(
                  travaleSpot.name,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: isFullCard ? 17 : 14,
                  ),
                ),
                if (isFullCard == true)
                  Text(travaleSpot.date.day.toString(),
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      )),
                if (isFullCard)
                  Text(DateFormat.MMM().format(travaleSpot.date).toString() +
                      ' ' +
                      travaleSpot.date.year.toString()),
                SizedBox(height: getProportionateScreenHeight(15)),
                Travalers(
                  user: travaleSpot.users,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Travalers extends StatelessWidget {
  const Travalers({
    Key key,
    this.user,
  }) : super(key: key);

  final List<User> user;

  @override
  Widget build(BuildContext context) {
    int totalUser = 0;
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenHeight(30),
      child: Stack(
        children: [
          ...List.generate(user.length, (index) {
            totalUser++;
            return Positioned(
              left: (22 * index).toDouble(),
              child: buildTravalerFace(index),
            );
          }),
          Positioned(
            left: (22 * totalUser).toDouble(),
            child: SizedBox(
              height: getProportionateScreenHeight(28),
              width: getProportionateScreenWidth(28),
              child: MaterialButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                padding: EdgeInsets.zero,
                color: kPrimaryColor,
                onPressed: () {},
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  ClipOval buildTravalerFace(int index) {
    return ClipOval(
      child: Image.asset(
        users[index].image,
        height: getProportionateScreenHeight(28),
        width: getProportionateScreenWidth(28),
        fit: BoxFit.cover,
      ),
    );
  }
}
