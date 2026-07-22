import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget containers({
    required String text,
    required Color backgroundColor,
    required double radius,
    double? height,
    double? width,
    required double textSize,
    required double right,
    required double left,

    // Optional maxWidth for flexible width
    double? textHeight, // Optional maxWidth for flexible width
  }) {
    return Padding(
      padding: EdgeInsets.only(
        right: right,
        left: left,
      ),
      child: ConstrainedBox(
        constraints: const BoxConstraints(
            maxWidth: double.infinity,
            maxHeight: double.infinity // Use maxWidth if provided
            ),
        child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(radius),
          ),
          child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0.w),
              child: Text(
                text,
                style: TextStyle(
                    fontSize: textSize,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    height: textHeight),
                textAlign: TextAlign.right,
              ),
            ),
          ),
        ),
      ),
    );
  }