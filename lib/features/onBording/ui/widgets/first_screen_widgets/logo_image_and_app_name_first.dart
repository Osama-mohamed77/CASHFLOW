import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LogoImageAndAppNameFirst extends StatelessWidget {
  const LogoImageAndAppNameFirst({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 50.w,
          height: 75.h,
          child: Image.asset(
            'assets/images/logo_cashflow_without_packground.png',
            fit: BoxFit.contain,
          ),
        ),
        Text(
          'CASHFLOW',
          style: TextStyle(
            fontFamily: 'Agbalumo',
            fontSize: 20.sp,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
