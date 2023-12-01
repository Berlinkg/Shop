import 'package:flutter/material.dart';
import '../utils/app_colors.dart';

BoxDecoration appBoxShadou({Color color = AppColors.primaryElement}) {
  return BoxDecoration(
    color: color,
    borderRadius: BorderRadius.circular(15),
  );
}

BoxDecoration appBoxTextFieldShadou(
    {Color color = AppColors.primaryBackground,
    Color backgroundColor = AppColors.primaryFourElementText}) {
  return BoxDecoration(
    color: color,
    borderRadius: BorderRadius.circular(15),
    border: Border.all(color: backgroundColor),
  );
}
