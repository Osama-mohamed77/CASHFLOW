import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:cashflow/core/constants/my_colors.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  Widget title(BuildContext context) {
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

  Widget details(BuildContext context) {
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

  Widget logo() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 50.w, // تعديل العرض ليكون أكبر من 50
          height: 75.h, // تعديل الطول ليكون أكبر من 75
          child: Image.asset(
            'assets/images/logo_cashflow_without_packground.png',
            fit:
                BoxFit.contain, // يتأكد من أن الصورة تظهر بشكل صحيح داخل الحدود
          ),
        ),
        // مسافة بين الشعار والكلمة
        Text(
          'CASHFLOW',
          style: TextStyle(
            fontFamily: 'Agbalumo', // الخط المخصص
            fontSize: 20.sp, // الحجم
            color: Colors.black, // اللون الأسود
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.0),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0.w),
        child: Column(
          children: [
            Gap(100.h),
            logo(),
            Gap(40.h),
            title(context),
            Gap(20.h),
            details(context),
          ],
        ),
      ),
    );
  }
}
