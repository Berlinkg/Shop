import 'package:first/common%20/widgets/app_widgets_shadou.dart';
import 'package:flutter/material.dart';
import '../../common /widgets/text_widgets.dart';

Widget appOnboardingPage(PageController controller,
    {String title = "",
    String subTitle = "",
    String image = "assets/images/1.png",
    index = 0,
    context}) {
  return Column(
    children: [
      Image.asset(
        image,
        fit: BoxFit.cover,
      ),
      Container(
        margin: const EdgeInsets.only(top: 20),
        child: text24(text: title),
      ),
      Container(
        margin: const EdgeInsets.only(top: 20),
        child: text16(text: subTitle),
      ),
      _nextButton(index, controller, context),
    ],
  );
}

Widget _nextButton(int index, PageController controller, BuildContext context) {
  return GestureDetector(
    onTap: () {
      if (index < 3) {
        controller.animateToPage(
          index,
          duration: const Duration(milliseconds: 300),
          curve: Curves.ease,
        );
      } else {
        Navigator.pushNamed(context, "/singIn");
      }
    },
    child: Container(
      height: 50,
      width: 370,
      margin: const EdgeInsets.only(top: 150),
      decoration: appBoxShadou(),
      child: Center(
        child: text16(text: "Next", color: Colors.white),
      ),
    ),
  );
}
