import 'package:first/pages/sing_up/notifier/registor_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'registor_notifier.g.dart';

@riverpod
class RegistorNotifier extends _$RegistorNotifier {
  @override
  RegisterState build() {
    return RegisterState();
  }

  void onUserNameChange(String name) {
    state = state.copyWith(userName: name);
  }

  void onUserEmailChange(String email) {
    state = state.copyWith(email: email);
  }

  void onUserPasswordChange(String password) {
    state = state.copyWith(password: password);
  }

  void onUserRePasswordChange(String password) {
    state = state.copyWith(rePassword: password);
  }
}
