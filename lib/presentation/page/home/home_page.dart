import 'package:d_info/d_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pretest_mobile_dev/core/config/preferences/session.dart';
import 'package:pretest_mobile_dev/core/config/theme/text_schemes.dart';
import 'package:pretest_mobile_dev/presentation/controller/user_controller.dart';
import 'package:pretest_mobile_dev/presentation/page/auth/login_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final userController = Get.put(UserController());

  void logout() async {
    bool? isYes = await DInfo.dialogConfirmation(
      context,
      'Logout?',
      'You sure logout from this account?',
    );
    if (isYes ?? false) {
      Session.clearUser();
      Get.off(() => const LoginPage());
    } else {}
  }

  @override
  void initState() {
    userController.data;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80.h,
        backgroundColor: Theme.of(context).colorScheme.primary,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: const EdgeInsets.all(4.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.0),
                    color: Theme.of(context).colorScheme.primaryContainer),
                child: Hero(
                  tag: userController.data.image!,
                  child: Image.network(
                    userController.data.image!,
                    height: 44,
                    width: 44,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 8.w,
            ),
            Text(
              'Welcome, ${userController.data.firstName}',
              style: CustomTextTheme.inter18.copyWith(
                fontWeight: FontWeight.w500,
                letterSpacing: 1,
                color: Theme.of(context).colorScheme.onPrimary,
              ),
            ),
          ],
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: InkWell(
              onTap: () {
                logout();
              },
              child: Icon(
                Icons.logout_rounded,
                color: Theme.of(context).colorScheme.onSecondary,
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
          child: Center(
        child: Text('HOME PAGE'),
      )),
    );
  }
}
