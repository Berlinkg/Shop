import 'package:first/common%20/utils/app_colors.dart';
import 'package:flutter/material.dart';

Widget text24({String text = '', Color color = AppColors.primaryText}) {
  return Text(
    text,
    textAlign: TextAlign.center,
    style: TextStyle(
      color: color,
      fontSize: 24,
      fontFamily: "Smooch",
      fontWeight: FontWeight.normal,
    ),
  );
}

Widget text16(
    {String text = '', Color color = AppColors.primarySecondaryElementText}) {
  return Text(
    text,
    textAlign: TextAlign.center,
    style: TextStyle(
      color: color,
      fontSize: 16,
      fontFamily: "Smooch",
      fontWeight: FontWeight.normal,
    ),
  );
}

Widget text14(
    {String text = '', Color color = AppColors.primarySecondaryElementText}) {
  return Text(
    text,
    textAlign: TextAlign.center,
    style: TextStyle(
      color: color,
      fontSize: 14,
      fontFamily: "Smooch",
      fontWeight: FontWeight.normal,
    ),
  );
}
