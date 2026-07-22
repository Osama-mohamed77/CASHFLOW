import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TitleAndHintTextFirst extends StatelessWidget {
  const TitleAndHintTextFirst({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: Text(
                '!Cashflow مرحبًا بك في تطبيق',
                textAlign: TextAlign.right,
                style: TextStyle(fontSize: 22.sp, fontWeight: FontWeight.bold),
                softWrap: true,
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: Text(
                'اكتشف مكانك في مربع التدفق المالي وتعلم\n..كيفية تحقيق الحرية المالية',
                textAlign: TextAlign.right,
                style: TextStyle(fontSize: 18.sp),
                softWrap: true,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
