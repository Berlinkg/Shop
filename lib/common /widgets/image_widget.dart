import 'package:flutter/material.dart';

Widget appImage({String imagePath = ""}) {
  return Image.asset(
    imagePath.isEmpty ? "assets/images/1.png" : imagePath,
    width: 16,
    height: 16,
  );
}
