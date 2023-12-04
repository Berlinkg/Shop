import 'package:first/common%20/utils/app_colors.dart';
import 'package:first/common%20/widgets/app_widgets_shadou.dart';
import 'package:first/common%20/widgets/image_widget.dart';
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

Widget appTExtFiled({
  String text = "",
  String iconName = "",
  String hintText = "BIr nerse korsot son ",
  bool obscureText = false,
}) {
  return Container(
    padding: const EdgeInsets.only(left: 25, right: 25),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        text14(text: text),
        Container(
          height: 50,
          // width: 300,
          decoration: appBoxTextFieldShadou(),
          child: Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 10),
                child: appImage(imagePath: iconName),
              ),
              SizedBox(
                width: 250,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: hintText,
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.transparent,
                      ),
                    ),
                    disabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                  ),

                  onChanged: (value) {},
                  maxLines: 1,
                  autocorrect: false,
                  //texti corsotot jana korsotpoit c
                  obscureText: obscureText,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget textUnderline({String text = ""}) {
  return GestureDetector(
    onTap: () {
      print("aas");
    },
    child: Text(
      text,
      style: const TextStyle(
          decoration: TextDecoration.underline,
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: AppColors.primaryText,
          decorationColor: AppColors.primaryText),
    ),
  );
}
