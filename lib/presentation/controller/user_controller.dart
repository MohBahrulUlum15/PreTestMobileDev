import 'package:get/get.dart';
import 'package:pretest_mobile_dev/core/data/model/user.dart';

class UserController extends GetxController {
  final _data = User().obs;
  User get data => _data.value;
  setData(x) => _data.value = x;
}
