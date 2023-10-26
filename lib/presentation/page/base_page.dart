import 'package:flutter/material.dart';
import 'package:pretest_mobile_dev/core/config/theme/text_schemes.dart';
import 'package:pretest_mobile_dev/presentation/page/home/chat_page.dart';
import 'package:pretest_mobile_dev/presentation/page/home/favorite_page.dart';
import 'package:pretest_mobile_dev/presentation/page/home/home_page.dart';
import 'package:pretest_mobile_dev/presentation/page/home/profile_page.dart';

class BasePage extends StatefulWidget {
  const BasePage({super.key});

  @override
  State<BasePage> createState() => _BasePageState();
}

int pageIndex = 0;

class _BasePageState extends State<BasePage> {
  

  void changePage(int index) {
    setState(() {
      pageIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  final pages = [
    const HomePage(),
    const FavoritePage(),
    const ChatPage(),
    const ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: pages[pageIndex],
      bottomNavigationBar: buildMyNavBar(context),
    );
  }

  Container buildMyNavBar(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                pageIndex = 0;
              });
            },
            child: pageIndex == 0
                ? SizedBox(
                    height: 65,
                    width: 50,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.home_rounded,
                          color: Theme.of(context).colorScheme.onPrimary,
                          size: 28,
                        ),
                        Expanded(
                          child: Text(
                            "Home",
                            style: CustomTextTheme.montserrat12.copyWith(
                                fontSize: 11,
                                fontWeight: FontWeight.w500,
                                color: Theme.of(context).colorScheme.onPrimary),
                          ),
                        ),
                      ],
                    ),
                  )
                : SizedBox(
                    height: 65,
                    width: 50,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.home_rounded,
                          color:
                              Theme.of(context).colorScheme.onPrimaryContainer,
                          size: 28,
                        ),
                        Expanded(
                          child: Text(
                            "Home",
                            style: CustomTextTheme.montserrat12.copyWith(
                              fontSize: 11,
                              fontWeight: FontWeight.w500,
                              color: Theme.of(context)
                                  .colorScheme
                                  .onPrimaryContainer,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                pageIndex = 1;
              });
            },
            child: pageIndex == 1
                ? SizedBox(
                    height: 65,
                    width: 50,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.favorite_rounded,
                          color: Theme.of(context).colorScheme.onPrimary,
                          size: 28,
                        ),
                        Expanded(
                          child: Text(
                            "Project",
                            style: CustomTextTheme.montserrat12.copyWith(
                                fontSize: 11,
                                fontWeight: FontWeight.w500,
                                color: Theme.of(context).colorScheme.onPrimary),
                          ),
                        ),
                      ],
                    ),
                  )
                : SizedBox(
                    height: 65,
                    width: 50,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.favorite_rounded,
                          color:
                              Theme.of(context).colorScheme.onPrimaryContainer,
                          size: 28,
                        ),
                        Expanded(
                          child: Text(
                            "Project",
                            style: CustomTextTheme.montserrat12.copyWith(
                              fontSize: 11,
                              fontWeight: FontWeight.w500,
                              color: Theme.of(context)
                                  .colorScheme
                                  .onPrimaryContainer,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                pageIndex = 2;
              });
            },
            child: pageIndex == 2
                ? SizedBox(
                    height: 65,
                    width: 50,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.chat_rounded,
                          color: Theme.of(context).colorScheme.onPrimary,
                          size: 28,
                        ),
                        Expanded(
                          child: Text(
                            "Payment",
                            style: CustomTextTheme.montserrat12.copyWith(
                                fontSize: 11,
                                fontWeight: FontWeight.w500,
                                color: Theme.of(context).colorScheme.onPrimary),
                          ),
                        ),
                      ],
                    ),
                  )
                : SizedBox(
                    height: 65,
                    width: 50,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.chat_rounded,
                          color:
                              Theme.of(context).colorScheme.onPrimaryContainer,
                          size: 28,
                        ),
                        Expanded(
                          child: Text(
                            "Payment",
                            style: CustomTextTheme.montserrat12.copyWith(
                                fontSize: 11,
                                fontWeight: FontWeight.w500,
                                color: Theme.of(context)
                                    .colorScheme
                                    .onPrimaryContainer),
                          ),
                        ),
                      ],
                    ),
                  ),
          ),
          GestureDetector(
            onTap: () {
              setState(
                () {
                  pageIndex = 3;
                },
              );
            },
            child: pageIndex == 3
                ? SizedBox(
                    height: 65,
                    width: 50,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.person_rounded,
                          color: Theme.of(context).colorScheme.onPrimary,
                          size: 28,
                        ),
                        Expanded(
                          child: Text(
                            "Profile",
                            style: CustomTextTheme.montserrat12.copyWith(
                                fontSize: 11,
                                fontWeight: FontWeight.w500,
                                color: Theme.of(context).colorScheme.onPrimary),
                          ),
                        ),
                      ],
                    ),
                  )
                : SizedBox(
                    height: 65,
                    width: 50,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.person_rounded,
                          color:
                              Theme.of(context).colorScheme.onPrimaryContainer,
                          size: 28,
                        ),
                        Expanded(
                          child: Text(
                            "Profile",
                            style: CustomTextTheme.montserrat12.copyWith(
                                fontSize: 11,
                                fontWeight: FontWeight.w500,
                                color: Theme.of(context)
                                    .colorScheme
                                    .onPrimaryContainer),
                          ),
                        ),
                      ],
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}
