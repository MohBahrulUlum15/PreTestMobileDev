import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pretest_mobile_dev/presentation/page/splash_page.dart';

import 'core/config/theme/color_schemes.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(
        MediaQuery.of(context).size.width,
        MediaQuery.of(context).size.height,
      ),
      builder: (_, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(colorScheme: lightColorScheme, useMaterial3: true),
          darkTheme:
              ThemeData(colorScheme: darkColorScheme, useMaterial3: true),
          home: child,
        );
      },
      child: const SplashPage(),
    );
  }
}