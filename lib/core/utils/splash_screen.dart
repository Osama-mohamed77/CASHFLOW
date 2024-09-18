import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:cashflow/core/utils/explain_screens.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Widget backgroundImage() {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: Image.asset(
        'assets/images/background.png',
        fit: BoxFit.cover,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        backgroundImage(),
        AnimatedSplashScreen(
          backgroundColor: Colors.transparent,
          duration: 2000,
          splashIconSize: 180.r,
          splash: Column(
            mainAxisSize: MainAxisSize
                .min, // يجعل الـ Column تأخذ المساحة التي تحتاجها فقط
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 130.w,
                height: 130.h,
                child: Image.asset(
                  'assets/images/logo_cashflow_without_packground.png',
                  fit: BoxFit
                      .contain, // يتأكد من أن الصورة تظهر بشكل صحيح داخل الحدود
                ),
              ),
              Text(
                'CASHFLOW',
                style: TextStyle(
                  fontFamily: 'Agbalumo', // الخط المخصص
                  fontSize: 24.sp, // الحجم
                  color: Colors.black, // اللون الأسود
                ),
              ),
            ],
          ),
          nextScreen: const ExplainScreens(),
        ),
      ],
    );
  }
}
