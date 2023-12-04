import 'package:first/common%20/utils/app_colors.dart';
import 'package:first/common%20/widgets/app_widgets_shadou.dart';

import 'package:flutter/material.dart';

import '../../pages/sing_up/sing_up.dart';

Widget appButton({
  String text = "",
  bool isLogin = true,
  BuildContext? context,
}) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
          context!, MaterialPageRoute(builder: (context) => const SingUp()));
    },
    child: Container(
      height: 50,
      width: 300,
      decoration: appBoxShadou(
        color: isLogin
            ? AppColors.primaryElement
            : AppColors.primaryFourElementText,
        border: Border.all(
          color: AppColors.primaryFourElementText,
        ),
      ),
      child: Center(
          child: Text(
        text,
        style: TextStyle(
          fontFamily: "Smooch",
          color: isLogin ? AppColors.primaryText : AppColors.primaryElementText,
        ),
      )),
    ),
  );
}
