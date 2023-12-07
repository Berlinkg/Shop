import 'package:first/common%20/global/global_loadr.dart';
import 'package:first/common%20/utils/app_colors.dart';
import 'package:first/common%20/widgets/text_widgets.dart';
import 'package:first/pages/sing_up/notifier/registor_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../common /widgets/app_textfields.dart';
import '../../common /widgets/button_widgets.dart';
import '../sing_in/widgets/sing_In_widgets.dart';

class SingUp extends ConsumerWidget {
  const SingUp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final regProvider = ref.watch(registorNotifierProvider);
    regProvider.toString();
    final loader = ref.watch(appLoaderProvider);
    print(loader);
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          appBar: buildAppBar(text: "Sing Up "),
          backgroundColor: Colors.white,
          body: loader == false
              ? SingleChildScrollView(
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
                        func: (value) => ref
                            .read(registorNotifierProvider.notifier)
                            .onUserNameChange(value),
                        // func: (value) => print(value),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      appTExtFiled(
                        text: "Email",
                        iconName: "assets/images/user.png",
                        hintText: "Enter your email adrres",
                        obscureText: false,
                        func: (value) => ref
                            .read(registorNotifierProvider.notifier)
                            .onUserNameChange(value),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      appTExtFiled(
                        text: "password",
                        iconName: "assets/images/lock.png",
                        hintText: "Enter your email",
                        obscureText: false,
                        func: (value) => ref
                            .read(registorNotifierProvider.notifier)
                            .onUserEmailChange(value),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      appTExtFiled(
                        text: "Confirm  Password",
                        iconName: "assets/images/loc.png",
                        hintText: "Enter your confrim password",
                        obscureText: true,
                        func: (value) => print(value),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Center(
                        child: SizedBox(
                          height: 40,
                          child: text14(
                            text: "or sing up in another login   ",
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: appButton(
                            text: "REGISTER",
                            isLogin: true,
                            context: context,
                            func: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Scaffold()));
                            }),
                      ),
                    ],
                  ),
                )
              : const Center(
                  child: CircularProgressIndicator(
                    backgroundColor: Colors.blue,
                    color: AppColors.primaryElement,
                  ),
                ),
        ),
      ),
    );
  }
}
