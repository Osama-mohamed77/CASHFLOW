import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget horizontalLineWithText(String text) {
  return Row(
    children: [
      Expanded(
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 10.h),
          child: const Divider(
            color: Color(0xff757575),
            thickness: 1.0,
          ),
        ),
      ),
      Container(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.bold,
            color: const Color(0xff757575),
          ),
        ),
      ),
      Expanded(
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 10.h),
          child: const Divider(
            color: Color(0xff757575),
            thickness: 1.0,
          ),
        ),
      ),
    ],
  );
}
