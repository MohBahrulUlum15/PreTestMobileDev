import 'package:d_method/d_method.dart';
import 'package:pretest_mobile_dev/core/config/network/app_request.dart';
import 'package:pretest_mobile_dev/core/config/preferences/session.dart';
import 'package:pretest_mobile_dev/core/data/model/user.dart';

import '../../config/network/api.dart';

class UserSource {
  static Future<SignInResult> login(String username, String password) async {
    String url = '${Api.baseUrl}/auth/login';
    Map? responseBody = await AppRequest.post(url, {
      'username': username,
      'password': password,
    });
    if (responseBody == null) {
      return SignInResult(success: false, message: 'Network error!');
    }
    if (responseBody is Map<String, dynamic> && responseBody.containsKey('id')) {
      final User user = User.fromJson(responseBody);
      Session.saveUser(user);
      DMethod.printTitle("Data User Saved:", user.toString());
      return SignInResult(success: true, message: 'Login successful');
    } else {
      return SignInResult(success: false, message: responseBody['message']);
    }
  }
}

class SignInResult {
  final bool success;
  final String message;

  SignInResult({required this.success, required this.message});
}
