import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TitleAndHintTextThird extends StatelessWidget {
  const TitleAndHintTextThird({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              '؟Cashflow أين أنت في',
              style: TextStyle(fontSize: 22.sp, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              textAlign: TextAlign.right,
              'أجب عن الأسئلة التالية لتحديد موقعك في\n :المربع المالي',
              style: TextStyle(fontSize: 18.sp),
            ),
          ],
        )
      ],
    );
  }
}