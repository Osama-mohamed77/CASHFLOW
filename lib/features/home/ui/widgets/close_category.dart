import 'package:cashflow/constants/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class ColesCategory extends StatelessWidget {
  final Color backgroundColor;
  final Color shadowColor;
  final IconData icon;
  final Color iconColor;
  final String title;
  final String hint;
  final Color titleColor;
  final Color hintColor;
  final Function() ontap;

  const ColesCategory({
    super.key,
    required this.ontap,
    required this.backgroundColor,
    required this.shadowColor,
    required this.icon,
    required this.iconColor,
    required this.title,
    required this.hint,
    required this.titleColor,
    required this.hintColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: 80.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.r),
          color: backgroundColor,
          boxShadow: [
            BoxShadow(
              color: shadowColor,
              offset: Offset(0, 4.r),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Gap(10.w),
            Icon(
              icon,
              size: 35.r,
              color: iconColor,
            ),
            Gap(3.w),
            const VerticalDivider(
              thickness: 3.0,
              color: MyColors.myBackground,
            ),
            const Spacer(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.bold,
                        color: titleColor,
                      ),
                    ),
                    Icon(
                      Icons.lock,
                      size: 25.r,
                      color: iconColor,
                    ),
                  ],
                ),
                Text(
                  hint,
                  style: TextStyle(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.bold,
                    color: hintColor,
                  ),
                ),
              ],
            ),
            Gap(5.w),
          ],
        ),
      ),
    );
  }
}
