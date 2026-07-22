import 'package:cashflow/core/utils/splash_screen.dart';
import 'package:cashflow/core/widgets/nav_bar.dart';
import 'package:cashflow/features/home/ui/home_screen.dart';
import 'package:cashflow/features/ideas_screen/ui/ideas_screen.dart';
import 'package:cashflow/features/money_screen/ui/money_management_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CashFlow extends StatelessWidget {
  const CashFlow({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      
      designSize: const Size(393, 852),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext context, child) {
        return MaterialApp(
          routes: {
            Home.id: (context) => const Home(),
            MoneyManagement.id: (context) => const MoneyManagement(),
            NavBar.id: (context) => const NavBar(),
            IdeasScreen.id: (context) => const IdeasScreen(),
          },
          
          debugShowCheckedModeBanner: false,
          
          home: const SplashScreen(),
        );
      },
    );
  }
}
