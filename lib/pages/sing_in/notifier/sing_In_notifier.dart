import 'package:first/pages/sing_in/notifier/sing_in_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SingInNotifier extends StateNotifier<SingInStae> {
  SingInNotifier() : super(SingInStae());
  //StateNotifier save the state
  void onUserEmailChange(String email) {
    state = state.copyWith(email: email);
  }

  void onUserPasswordChange(String password) {
    state = state.copyWith(password: password);
  }
}

final singInNotifierProvider =
    StateNotifierProvider<SingInNotifier, SingInStae>(
        (ref) => SingInNotifier());
