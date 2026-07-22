import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_nav_bar/google_nav_bar.dart'; // Import for GNav
import 'package:hugeicons/hugeicons.dart';
import 'package:iconsax/iconsax.dart';
import 'package:cashflow/constants/my_colors.dart';
import 'package:cashflow/features/charts_screen/ui/charts_screen.dart';
import 'package:cashflow/features/home/ui/home_screen.dart';
import 'package:cashflow/features/ideas_screen/ui/ideas_screen.dart';
import 'package:cashflow/features/money_screen/ui/money_management_screen.dart';
import 'package:cashflow/core/data/logic/page_index_provider.dart';
import 'package:provider/provider.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});
  static String id = 'HomeNavBarPatient';

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  final List<Widget> _pages = <Widget>[
    const ChartsScreen(),
    const MoneyManagement(),
    const IdeasScreen(),
    const Home(),
  ];

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) {
        if (!didPop) {
         
          exit(0);
        }
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
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black,
                            offset: Offset(0, 4),
                            blurRadius: 4)
                      ],
                      color: const Color(0xff2A2A2A),
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
                      hoverColor: const Color(0xff2A2A2A),
                      rippleColor: const Color(0xff2A2A2A),
                      backgroundColor: const Color(0xff2A2A2A),
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

                      tabBackgroundColor: const Color(0xff2A2A2A),
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
