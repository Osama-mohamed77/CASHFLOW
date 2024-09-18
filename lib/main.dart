import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:cashflow/core/utils/splash_screen.dart';
import 'package:cashflow/presentation/home.dart';
import 'package:cashflow/presentation/ideas.dart';
import 'package:cashflow/presentation/money_management.dart';
import 'package:cashflow/core/widgets/nav_bar.dart';


import 'package:cashflow/providers/answer_provider.dart';
import 'package:cashflow/providers/home_provider.dart';
import 'package:cashflow/providers/money_provider.dart';
import 'package:cashflow/providers/page_index_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => PageIndexProvider()),
        ChangeNotifierProvider(create: (_) => AnswerProvider()),
        ChangeNotifierProvider(create: (_) => MoneyProvider()),
        ChangeNotifierProvider(create: (_) => HomeProvider()),
      ],
      child: const CashFlow(),
    ),
  );
}

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
