import 'package:first/common%20/widgets/text_widgets.dart';
import 'package:flutter/material.dart';
import '../utils/app_colors.dart';
import 'app_widgets_shadou.dart';
import 'image_widget.dart';

Widget appTExtFiled(
    {String text = "",
    String iconName = "",
    String hintText = "BIr nerse korsot son ",
    bool obscureText = false,
    void Function(String value)? func}) {
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
                  // onChanged: (value) => func!(value),
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
                  maxLines: 1,
                  autocorrect: false,
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
