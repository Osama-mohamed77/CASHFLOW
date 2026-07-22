import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class DetailsTextAndIconsSecond extends StatelessWidget {
  const DetailsTextAndIconsSecond({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              textAlign: TextAlign.right,
              ':(موظف) E - Employee',
              style: TextStyle(fontSize: 18.sp),
            ),
            Padding(
              padding: EdgeInsets.only(left: 5.w),
              child: const Icon(
                Icons.person_rounded,
                color: Colors.black,
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: Text(
                textAlign: TextAlign.right,
                'تعتمد على العمل لدى شخص آخر أو شركة للحصول على راتب ثابت كمصدر رئيسي لدخلك',
                style: TextStyle(fontSize: 17.sp),
                softWrap: true,
              ),
            ),
          ],
        ),
        Gap(10.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              textAlign: TextAlign.right,
              ':(عمل حر) S - Self-employed',
              style: TextStyle(fontSize: 18.sp),
            ),
            Padding(
              padding: EdgeInsets.only(left: 5.w),
              child: const Icon(
                Icons.store_rounded,
                color: Colors.black,
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: Text(
                textAlign: TextAlign.right,
                'تعمل لحسابك الخاص وتحقق الدخل بناءً على جهدك،أنت الرئيس والعامل في نفس الوقت',
                style: TextStyle(fontSize: 17.sp),
                softWrap: true,
              ),
            ),
          ],
        ),
        Gap(10.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              textAlign: TextAlign.right,
              ':(صاحب عمل) B - Business owner',
              style: TextStyle(fontSize: 18.sp),
            ),
            Padding(
              padding: EdgeInsets.only(left: 5.w),
              child: const Icon(
                Icons.factory_sharp,
                color: Colors.black,
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: Text(
                textAlign: TextAlign.right,
                'تملك شركة أو نظامًا يعمل من أجلك. يمكنك توليد الدخل من خلال فريق أو نظام عمل مستقل عن وجودك',
                style: TextStyle(fontSize: 17.sp),
                softWrap: true,
              ),
            ),
          ],
        ),
        Gap(10.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              textAlign: TextAlign.right,
              ':(مستثمر) I - Investor',
              style: TextStyle(fontSize: 18.sp),
            ),
            Padding(
              padding: EdgeInsets.only(left: 5.w),
              child: const Icon(
                Icons.money_rounded,
                color: Colors.black,
                size: 20,
              ),
            ),
            Gap(7.w)
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: Text(
                textAlign: TextAlign.right,
                'تقوم باستثمار أموالك في الأصول مثل العقارات أو الأسهم لتوليد دخل سلبي، ما يجعل المال يعمل من أجلك',
                style: TextStyle(fontSize: 17.sp),
                softWrap: true,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
