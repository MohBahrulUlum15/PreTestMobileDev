import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pretest_mobile_dev/core/config/preferences/session.dart';
import 'package:pretest_mobile_dev/presentation/page/auth/login_page.dart';
import 'package:pretest_mobile_dev/presentation/page/base_page.dart';

import '../../core/data/model/user.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  checUserLoggedIn() async {
    User user = await Session.getUser();
    const duration = Duration(seconds: 3);
    if (user.id != null) {
      return Timer(duration, () {
        Get.off(() => const BasePage());
      });
    } else {
      return Timer(duration, () {
        Get.off(() => const LoginPage());
      });
    }
  }

  @override
  void initState() {
    checUserLoggedIn();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Icon(
            Icons.dashboard_rounded,
            size: 160.w,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
      ),
    );
  }
}
