//import 'package:first/common%20/widgets/popap_mesages.dart';
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
    // if(credential.user==null){
    //   toastInfo('user not found');
    // }
    // if (!credential.user!.emailFerivied) {

    //   toastInfo("please enter your email and password first");
    // }
    // var user=credential.user;
    // if(user!==null){
    //   String? dispalyName=user.dispalyName;
    //   String ?email=user.email;
    //   String ?id=user.uid;
    //   String? photoUrl=user.photoUrl;
    // }
  }
  //catch(e){}
}
