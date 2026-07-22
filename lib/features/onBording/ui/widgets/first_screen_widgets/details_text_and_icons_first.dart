import 'package:cashflow/constants/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class DetailsTextAndIconsFirst extends StatelessWidget {
  const DetailsTextAndIconsFirst({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Gap(30.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: Text(
                'تعرف على وضعك المالي: حدد الفئة التي تنتمي \n ؟I أم، B، S،  Eإليها – هل أنت في ',
                textAlign: TextAlign.right,
                style: TextStyle(fontSize: 18.sp),
                softWrap: true,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 25.h, left: 5.w),
              child: const Icon(
                Icons.info,
                color: MyColors.myOrange,
              ),
            ),
          ],
        ),
        Gap(20.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: Text(
                'تابع تدفقك النقدي: احصل على تحليل دقيق لدخلك ونفقاتك وأصولك والتزاماتك',
                textAlign: TextAlign.right,
                style: TextStyle(fontSize: 18.sp),
                softWrap: true,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 25.h, left: 5.w),
              child: const Icon(
                Icons.info,
                color: MyColors.myOrange,
              ),
            ),
          ],
        ),
        Gap(20.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: Text(
                'خطط لتحقيق أهدافك: احصل على نصائح وخطط مخصصة للانتقال من مربع إلى آخر وتحسين وضعك المالي',
                textAlign: TextAlign.right,
                style: TextStyle(fontSize: 18.sp),
                softWrap: true,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 53.h, left: 5.w),
              child: const Icon(
                Icons.info,
                color: MyColors.myOrange,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
