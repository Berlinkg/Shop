import 'package:first/common%20/widgets/text_widgets.dart';
import 'package:flutter/material.dart';
import '../../common /widgets/button_widgets.dart';
import '../sing_in/widgets/sing_In_widgets.dart';

class SingUp extends StatelessWidget {
  const SingUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          appBar: buildAppBar(text: "Sing Up "),
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 30,
                ),
                Center(child: text14(text: "free sing up and join as")),
                const SizedBox(
                  height: 25,
                ),
                appTExtFiled(
                  text: "User name",
                  iconName: "assets/images/user.png",
                  hintText: "Enter your email",
                  obscureText: false,
                ),
                const SizedBox(
                  height: 25,
                ),
                appTExtFiled(
                  text: "Email",
                  iconName: "assets/images/user.png",
                  hintText: "Enter your email adrres",
                  obscureText: false,
                ),
                const SizedBox(
                  height: 25,
                ),
                appTExtFiled(
                  text: "password",
                  iconName: "assets/images/lock.png",
                  hintText: "Enter your email",
                  obscureText: false,
                ),
                const SizedBox(
                  height: 25,
                ),
                appTExtFiled(
                  text: "Confirm  Password",
                  iconName: "assets/images/loc.png",
                  hintText: "Enter your confrim password",
                  obscureText: true,
                ),
                SizedBox(
                  height: 25,
                  child: text14(
                    text: "or sing up in another login   ",
                  ),
                ),
                const SizedBox(
                  height: 37,
                ),
                Center(
                  child: appButton(
                    text: "login",
                    isLogin: false,
                    context: context,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
