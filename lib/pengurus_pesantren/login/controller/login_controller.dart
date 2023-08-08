import 'package:get/get.dart';

class LoginController extends GetxController {
  RxBool obscurePass = true.obs;
  void changeObscure() {
    obscurePass.value = !obscurePass.value;
    update();
  }
}
