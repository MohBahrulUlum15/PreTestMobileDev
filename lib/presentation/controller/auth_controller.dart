import 'package:get/get.dart';
import 'package:pretest_mobile_dev/core/data/source/user_source.dart';

class AuthController extends GetxController {
  final _loading = false.obs;
  bool get loading => _loading.value;

  final _successLogin = false.obs;
  bool get successLogin => _successLogin.value;

  final _message = "".obs;
  String get message => _message.value;

  login(String username, String password) async {
    _loading.value = true;
    final result = await UserSource.login(username, password);
    _successLogin.value = result.success;
    _message.value = result.message;
    update();
    _loading.value = false;
  }
}
