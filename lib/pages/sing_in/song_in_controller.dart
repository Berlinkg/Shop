import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'notifier/sing_In_notifier.dart';

class SingInController {
  WidgetRef ref;

  SingInController(this.ref);

  void handleSingIn() {
    var state = ref.read(singInNotifierProvider);
    String email = state.email;
    String password = state.password;
    print("email $email");
    print("password $password");
  }
}
