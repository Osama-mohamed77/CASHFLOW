import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TitleTextSecond extends StatelessWidget {
  const TitleTextSecond({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          '؟Cashflow ما هي الفئات الأربع في',
          style: TextStyle(fontSize: 22.sp, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
