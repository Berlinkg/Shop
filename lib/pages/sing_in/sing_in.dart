import 'package:first/common%20/widgets/text_widgets.dart';
import 'package:first/pages/sing_in/widgets/sing_In_widgets.dart';
import 'package:flutter/material.dart';

class SingIn extends StatelessWidget {
  const SingIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          appBar: buildAppBar(),
          backgroundColor: Colors.white,
          body: Column(
            //  mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              tirPartyLogin(),
              Center(child: text14(text: "or sing in thi in another login")),
              const SizedBox(
                height: 15,
              ),
              appTExtFiled(
                text: "Email",
                iconName: "assets/images/user.png",
                hintText: "Enter your email",
                obscureText: false,
              ),
              const SizedBox(
                height: 20,
              ),
              appTExtFiled(
                text: "Password",
                iconName: "assets/images/loc.png",
                hintText: "Enter your password",
                obscureText: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
