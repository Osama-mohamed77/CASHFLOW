import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_nav_bar/google_nav_bar.dart'; // Import for GNav
import 'package:hugeicons/hugeicons.dart';
import 'package:iconsax/iconsax.dart';
import 'package:cashflow/core/constants/my_colors.dart';
import 'package:cashflow/presentation/data.dart';
import 'package:cashflow/presentation/home.dart';
import 'package:cashflow/presentation/ideas.dart';
import 'package:cashflow/presentation/money_management.dart';
import 'package:cashflow/providers/page_index_provider.dart';
import 'package:provider/provider.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});
  static String id = 'HomeNavBarPatient';

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  final List<Widget> _pages = <Widget>[
    const Data(),
    const MoneyManagement(),
    const IdeasScreen(),
    const Home(),
  ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        // Optionally, you could return true to allow the app to exit, but consider adding a confirmation dialog instead
        exit(0);
      },
      child: Consumer<PageIndexProvider>(
        builder: (context, pageIndexProvider, child) {
          return Scaffold(
            extendBody: true,
            body: _pages[pageIndexProvider.currentIndex],
            bottomNavigationBar: Stack(
              children: [
                Positioned.fill(
                  child: Container(),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20.r)),
                  margin:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 30.w,
                    ), // Add space at the bottom
                    child: GNav(
                      selectedIndex: pageIndexProvider.currentIndex,
                      onTabChange: (value) {
                        pageIndexProvider.changePage(value);
                      },
                      haptic: false,
                      hoverColor: Colors.black,
                      rippleColor: Colors.black,
                      backgroundColor: Colors.black,
                      // color: Colors.white.withOpacity(0),
                      activeColor: pageIndexProvider.currentIndex == 3
                          ? MyColors.myOrange
                          : pageIndexProvider.currentIndex == 2
                              ? MyColors.myGreen
                              : pageIndexProvider.currentIndex == 1
                                  ? MyColors.myBlue
                                  : pageIndexProvider.currentIndex == 0
                                      ? MyColors.myRed
                                      : null,

                      tabBackgroundColor: Colors.black,
                      gap: 5.r,
                      padding: EdgeInsets.all(20.r),
                      tabs: [
                        GButton(
                          icon: HugeIcons.strokeRoundedAnalyticsUp,
                          iconColor: MyColors.myGrey,
                          iconSize: 30.r,
                          textStyle: TextStyle(
                            fontFamily: 'inter',
                            fontSize: 14.sp,
                            color: MyColors.myOrange,
                          ),
                        ),
                        GButton(
                          icon: HugeIcons.strokeRoundedWallet03,
                          iconColor: MyColors.myGrey,
                          iconSize: 30.r,
                          textStyle: TextStyle(
                            fontFamily: 'inter',
                            fontSize: 14.sp,
                            color: MyColors.myOrange,
                          ),
                        ),
                        GButton(
                          icon: HugeIcons.strokeRoundedIdea01,
                          iconSize: 30.r,
                          iconColor: Colors.white,
                          textStyle: TextStyle(
                            fontFamily: 'inter',
                            fontSize: 14.sp,
                            color: MyColors.myOrange,
                          ),
                        ),
                        GButton(
                          icon: Iconsax.home4,
                          iconColor: MyColors.myGrey,
                          iconSize: 30.r,
                          textStyle: TextStyle(
                            fontFamily: 'inter',
                            fontSize: 14.sp,
                            color: MyColors.myOrange,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
