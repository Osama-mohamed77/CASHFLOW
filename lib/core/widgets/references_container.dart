import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:cashflow/core/constants/my_colors.dart';

class ReferencesContainer extends StatelessWidget {
  const ReferencesContainer({
    super.key,
    required this.category,
    required this.bookNames, // تعديل هنا لتكون قائمة
  });

  final String category;
  final List<String> bookNames; // قائمة من الكتاب

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.w),
      decoration: BoxDecoration(
        color: MyColors.myBoxReferences,
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Column(
        children: [
          Gap(10.h),
          Text(
            textAlign: TextAlign.center,
            'بعض المراجع المناسبة لفئة $category',
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Gap(5.h),
          Column(
            children: bookNames.map((bookName) {
              return Column(
                children: [
                  Gap(10.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'كتاب: $bookName',
                        style: TextStyle(
                          fontSize: 13.sp,
                          fontWeight: FontWeight.bold,
                          color: MyColors.myGrey,
                        ),
                      ),
                      Gap(5.w),
                      Icon(
                        Icons.info,
                        size: 15.r,
                        color: const Color.fromARGB(255, 43, 134, 57),
                      ),
                      Gap(5.w),
                    ],
                  ),
                ],
              );
            }).toList(),
          ),
          Gap(20.h),
        ],
      ),
    );
  }
}
