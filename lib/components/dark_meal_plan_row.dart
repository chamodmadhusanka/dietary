import 'package:flutter/material.dart';
import 'package:dietary_project/utilities/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class DarkMealPlanRow extends StatelessWidget {
  const DarkMealPlanRow({this.image, this.mealHeading, this.mealItems});

  final String? image;
  final String? mealHeading;
  final String? mealItems;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 10),
      color: kMealBgColor.withOpacity(0.7),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            child: FittedBox(
              child: Image.asset(
                image.toString(),
                width: 140.0,
              ),
              fit: BoxFit.fill,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                mealHeading.toString(),
                style: GoogleFonts.roboto(
                  textStyle: kMealHeadingTextStyle,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                mealItems.toString(),
                style: GoogleFonts.roboto(
                  textStyle: kMealListTextStyle,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
