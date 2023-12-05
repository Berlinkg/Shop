import 'package:firebase_auth/firebase_auth.dart';
import 'package:first/common%20/widgets/popap_mesages.dart';
import 'package:first/pages/sing_up/notifier/registor_notifier.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SingUpController {
  late WidgetRef ref;
  SingUpController({required this.ref});

  Future<void> handleShngUp() async {
    var state = ref.read(registorNotifierProvider);

    String name = state.userName;
    String email = state.email;
    String password = state.password;
    String rePassword = state.rePassword;

    if (state.userName.isEmpty || name.isEmpty) {
      toastInfo("Your name is empty");
      return;
    }

    if (state.userName.length < 6 || name.length > 6) {
      toastInfo("Yourr name is to short ");
      return;
    }

    if (state.email.isEmpty || name.isEmpty) {
      toastInfo("Your email is empty. Please enter your email");
      return;
    }
    if ((state.password.isEmpty || state.rePassword.isEmpty) ||
        password.isEmpty) {
      toastInfo("our password did not  match our password. Please try again");
      return;
    }
    if ((state.password! == state.rePassword) || password != rePassword) {
      toastInfo("our password did not  match our password. Please try again");
      return;
    }
    var context = Navigator.of(ref.context);
    try {
      final cretdential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      if (kDebugMode) {
        print(cretdential);
        if (cretdential.user != null) {
          await cretdential.user?.sendEmailVerification();
          await cretdential.user?.updateDisplayName(name);
          //get server foto url
          //get user fotot url
          context.pop();
          toastInfo(
              "your account has been created  successfully.pleass open your indented");
        }
      }
    } catch (e) {}
  }
}
