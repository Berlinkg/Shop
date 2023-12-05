import 'package:first/common%20/utils/app_colors.dart';
import 'package:first/common%20/widgets/text_widgets.dart';
import 'package:flutter/material.dart';

AppBar buildAppBar({String text = ""}) {
  return AppBar(
    bottom: PreferredSize(
      preferredSize: const Size.fromHeight(20),
      child: Container(
        color: Colors.black,
        height: 1,
      ),
    ),
    title: text16(text: text, color: AppColors.primaryText),
  );
}

Widget tirPartyLogin() {
  return Container(
    margin: const EdgeInsets.only(left: 80, right: 80, top: 40, bottom: 20),
    child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
      _loginButton(
        imagePath: "assets/images/1.png",
      ),
      _loginButton(
        imagePath: "assets/images/use.png",
      ),
      _loginButton(
        imagePath: "assets/images/5.png",
      ),
    ]),
  );
}

Widget _loginButton({String imagePath = ""}) {
  return GestureDetector(
    onTap: () {},
    child: SizedBox(
      width: 40,
      height: 40,
      child: Image.asset(imagePath),
    ),
  );
}
