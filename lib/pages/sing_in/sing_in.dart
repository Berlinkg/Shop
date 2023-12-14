import 'package:first/common%20/widgets/button_widgets.dart';
import 'package:first/common%20/widgets/text_widgets.dart';
import 'package:first/pages/sing_in/notifier/sing_In_notifier.dart';
import 'package:first/pages/sing_in/song_in_controller.dart';
import 'package:first/pages/sing_in/widgets/sing_In_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../common /widgets/app_textfields.dart';

class SingIn extends ConsumerStatefulWidget {
  const SingIn({Key? key}) : super(key: key);

  @override
  ConsumerState<SingIn> createState() => _SingInState();
}

class _SingInState extends ConsumerState<SingIn> {
  late SingInController _controller;

  @override
  void initState() {
    _controller = SingInController(ref);
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final singInProvider = ref.watch(singInNotifierProvider);

    //? it is not a agood example
    singInProvider.toString();
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          appBar: buildAppBar(text: "Sing IN"),
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Column(
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
                  func: (value) => ref
                      .read(singInNotifierProvider.notifier)
                      .onUserEmailChange(value),
                ),
                const SizedBox(
                  height: 20,
                ),
                appTExtFiled(
                  text: "Password",
                  iconName: "assets/images/loc.png",
                  hintText: "Enter your password",
                  obscureText: true,
                  func: (value) => ref
                      .read(singInNotifierProvider.notifier)
                      .onUserPasswordChange(value),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20),
                  child: textUnderline(text: "Forget Password ?"),
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: appButton(
                    text: "Login",
                    func: () => _controller.handleSingIn(),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: appButton(
                    buttonName: "Register",
                    text: "Registor",
                    isLogin: false,
                    context: context,
                    func: () => Navigator.pushNamed(context, "/register"),
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
