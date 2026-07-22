import 'package:cashflow/constants/my_colors.dart';
import 'package:cashflow/features/ideas_screen/ui/widgets/containers_for_ideas.dart';
import 'package:cashflow/features/ideas_screen/ui/widgets/horizontal_line_with_text.dart';
import 'package:cashflow/features/ideas_screen/ui/widgets/references_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class EmployeeTextAndBooks extends StatelessWidget {
  const EmployeeTextAndBooks({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Gap(20.h),
        horizontalLineWithText('فئة الموظف'),
        Gap(20.h),
        Row(
          mainAxisAlignment:
              MainAxisAlignment.end, // Adjust row size to content
          children: [
            containers(
                text: 'تعلم مهارات جديدة تعزز فرص الترقي',
                backgroundColor: MyColors.myOrange,
                radius: 10.r,
                height: 30.h,
                textSize: 12.sp,
                right: 10.w,
                left: 0),
            containers(
                text: 'E',
                backgroundColor: MyColors.myOrange,
                radius: 200.r,
                height: 40.h,
                width: 40.w,
                textSize: 17.sp,
                right: 10.w,
                left: 0),
          ],
        ),
        Gap(5.h),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            containers(
                text:
                    'قم بتحديد المهارات التي يتطلبها سوق العمل في مجالك، \nمثل البرمجة، التسويق الرقمي، أو حتى مهارات القيادة \nوالإدارة. تعلم هذه المهارات عن طريق الدورات التدريبية \nالمتاحة على الإنترنت، مثل تلك المقدمة عبر منصات \nمثل Coursera أو Udemy. هذا سيساعدك على تحسين \nسيرتك الذاتية وزيادة فرصك في الترقية أو الحصول على \n.عروض عمل جديدة',
                backgroundColor: MyColors.myOrange,
                radius: 10.r,
                textSize: 12.sp,
                right: 10.w,
                left: 0,
                textHeight: 0),
            containers(
                text: 'شرح',
                backgroundColor: MyColors.myOrange,
                radius: 5.r,
                height: 20.h,
                textSize: 12.sp,
                right: 10.w,
                left: 0,
                textHeight: 0),
          ],
        ),
        Gap(10.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            containers(
              text: 'E',
              backgroundColor: MyColors.myOrange,
              radius: 200.r,
              height: 40.h,
              width: 40.w,
              textSize: 17.sp,
              right: 0,
              left: 10.w,
            ),
            containers(
              text: 'بناء شبكة علاقات مهنية قوية',
              backgroundColor: MyColors.myOrange,
              radius: 10.r,
              height: 30.h,
              textSize: 12.sp,
              right: 0,
              left: 10.w,
            ),
          ],
        ),
        Gap(5.h),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            containers(
                text: 'شرح',
                backgroundColor: MyColors.myOrange,
                radius: 5.r,
                height: 20.h,
                textSize: 12.sp,
                right: 0,
                left: 10.w,
                textHeight: 0),
            containers(
                text:
                    'تواصل مع زملائك في العمل، واحضر فعاليات مهنية أو \nمؤتمرات في مجالك. بناء شبكة علاقات مهنية سيساعدك \nفي الحصول على فرص جديدة، سواء للترقي داخل شركتك \nالحالية أو للانتقال إلى شركات أخرى. استخدم LinkedIn \n.للتواصل مع محترفين في مجالك وتوسيع دائرة معارفك',
                backgroundColor: MyColors.myOrange,
                radius: 10.r,
                textSize: 12.sp,
                right: 0,
                left: 10.w,
                textHeight: 0),
          ],
        ),
        Gap(10.h),
        Row(
          mainAxisAlignment:
              MainAxisAlignment.end, // Adjust row size to content
          children: [
            containers(
                text: 'استثمار وقت الفراغ في تطوير عمل جانبي',
                backgroundColor: MyColors.myOrange,
                radius: 10.r,
                height: 30.h,
                textSize: 12.sp,
                right: 10.w,
                left: 0),
            containers(
                text: 'E',
                backgroundColor: MyColors.myOrange,
                radius: 200.r,
                height: 40.h,
                width: 40.w,
                textSize: 17.sp,
                right: 10.w,
                left: 0),
          ],
        ),
        Gap(5.h),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            containers(
                text:
                    'حتى وأنت موظف، يمكنك استغلال وقت فراغك في تقديم \nخدمات أو بدء مشروع جانبي مثل استشارات في مجالك \nأو بيع منتجات عبر الإنترنت. سيساعدك هذا على بناء دخل \nإضافي ويمنحك الفرصة لاستكشاف مجالات أخرى قد تكون \n.أكثر ربحية أو تستحق تحويلها إلى عمل رئيسي لاحقًا',
                backgroundColor: MyColors.myOrange,
                radius: 10.r,
                textSize: 12.sp,
                right: 10.w,
                left: 0,
                textHeight: 0),
            containers(
                text: 'شرح',
                backgroundColor: MyColors.myOrange,
                radius: 5.r,
                height: 20.h,
                textSize: 12.sp,
                right: 10.w,
                left: 0,
                textHeight: 0),
          ],
        ),
        Gap(10.h),
        Row(
          mainAxisAlignment:
              MainAxisAlignment.start, // Adjust row size to content
          children: [
            containers(
              text: 'E',
              backgroundColor: MyColors.myOrange,
              radius: 200.r,
              height: 40.h,
              width: 40.w,
              textSize: 17.sp,
              right: 0,
              left: 10.w,
            ),
            containers(
              text: 'الادخار والاستثمار الذكي',
              backgroundColor: MyColors.myOrange,
              radius: 10.r,
              height: 30.h,
              textSize: 12.sp,
              right: 0,
              left: 10.w,
            ),
          ],
        ),
        Gap(5.h),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            containers(
                text: 'شرح',
                backgroundColor: MyColors.myOrange,
                radius: 5.r,
                height: 20.h,
                textSize: 12.sp,
                right: 0,
                left: 10.w,
                textHeight: 0),
            containers(
                text:
                    'قم بتقسيم دخلك الشهري إلى أجزاء مخصصة للادخار، \nالاستثمار، والمصاريف. ادخر جزءًا ثابتًا من دخلك كل شهر، \nواستثمر في أصول تحقق عوائد على المدى الطويل مثل \nالأسهم أو صناديق الاستثمار المشتركة. هذا سيساعدك \n.على بناء أصول مالية وتحقيق استقلال مالي في المستقبل',
                backgroundColor: MyColors.myOrange,
                radius: 10.r,
                textSize: 12.sp,
                right: 0,
                left: 10.w,
                textHeight: 0),
          ],
        ),
        Gap(10.h),
        Row(
          mainAxisAlignment:
              MainAxisAlignment.end, // Adjust row size to content
          children: [
            containers(
                //العنوان
                text: 'تحكم في مصروفاتك الشخصية',
                backgroundColor: MyColors.myOrange,
                radius: 10.r,
                height: 30.h,
                textSize: 12.sp,
                right: 10.w,
                left: 0),
            containers(
                text: 'E',
                backgroundColor: MyColors.myOrange,
                radius: 200.r,
                height: 40.h,
                width: 40.w,
                textSize: 17.sp,
                right: 10.w,
                left: 0),
          ],
        ),
        Gap(5.h),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            containers(
                text:
                    //الشرح
                    'راجع نفقاتك الشهرية واحرص على تقليل المصروفات غير \nالضرورية. احتفظ بسجل لمصاريفك واستخدم تطبيقات \nمالية لمساعدتك على مراقبة الإنفاق، مثل التطبيقات التي \nتقدمها البنوك أو تطبيقات التخطيط المالي. سيمنحك ذلك \n.نظرة شاملة على كيفية توزيع أموالك وما يمكن تحسينه',
                backgroundColor: MyColors.myOrange,
                radius: 10.r,
                textSize: 12.sp,
                right: 10.w,
                left: 0,
                textHeight: 0),
            containers(
                text: 'شرح',
                backgroundColor: MyColors.myOrange,
                radius: 5.r,
                height: 20.h,
                textSize: 12.sp,
                right: 10.w,
                left: 0,
                textHeight: 0),
          ],
        ),
        Gap(10.h),
        Row(
          mainAxisAlignment:
              MainAxisAlignment.start, // Adjust row size to content
          children: [
            containers(
              text: 'E',
              backgroundColor: MyColors.myOrange,
              radius: 200.r,
              height: 40.h,
              width: 40.w,
              textSize: 17.sp,
              right: 0,
              left: 10.w,
            ),
            containers(
              text: 'زيادة إنتاجيتك في العمل',
              backgroundColor: MyColors.myOrange,
              radius: 10.r,
              height: 30.h,
              textSize: 12.sp,
              right: 0,
              left: 10.w,
            ),
          ],
        ),
        Gap(5.h),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            containers(
              text: 'شرح',
              backgroundColor: MyColors.myOrange,
              radius: 5.r,
              height: 20.h,
              textSize: 12.sp,
              right: 0,
              left: 10.w,
              textHeight: 0,
            ),
            containers(
              text:
                  'احرص على تنظيم يومك في العمل لتحسين إنتاجيتك. \nاستخدم تقنيات مثل قائمة المهام اليومية، وتجنب \nالانشغال بالأمور غير الهامة. تطوير الإنتاجية يمكن أن \n.يعزز فرصك في الترقي وزيادة راتبك',
              backgroundColor: MyColors.myOrange,
              radius: 10.r,
              textSize: 12.sp,
              right: 0,
              left: 10.w,
              textHeight: 0,
            ),
          ],
        ),
        Gap(10.h),
        Row(
          mainAxisAlignment:
              MainAxisAlignment.end, // Adjust row size to content
          children: [
            containers(
              text: 'استثمار في تعليم مستمر',
              backgroundColor: MyColors.myOrange,
              radius: 10.r,
              height: 30.h,
              textSize: 12.sp,
              right: 0,
              left: 10.w,
            ),
            containers(
              text: 'E',
              backgroundColor: MyColors.myOrange,
              radius: 200.r,
              height: 40.h,
              width: 40.w,
              textSize: 17.sp,
              right: 10.w,
              left: 10.w,
            ),
          ],
        ),
        Gap(5.h),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            containers(
              text:
                  'سواء كنت موظفًا جديدًا أو لديك سنوات من الخبرة، فإن \nالتعلم المستمر أمر ضروري. احصل على شهادات \nمتخصصة في مجالك أو في مجالات أخرى مكملة لعملك، \nمثل إدارة المشاريع أو التحليل المالي. هذا سيجعلك أكثر \nقيمة لشركتك ويساعدك في الحصول على ترقيات أو \n.وظائف أفضل',
              backgroundColor: MyColors.myOrange,
              radius: 10.r,
              textSize: 12.sp,
              right: 0,
              left: 10.w,
              textHeight: 0,
            ),
            containers(
              text: 'شرح',
              backgroundColor: MyColors.myOrange,
              radius: 5.r,
              height: 20.h,
              textSize: 12.sp,
              right: 10.w,
              left: 10.w,
              textHeight: 0,
            ),
          ],
        ),
        Gap(10.h),
        Row(
          mainAxisAlignment:
              MainAxisAlignment.start, // Adjust row size to content
          children: [
            containers(
              text: 'E',
              backgroundColor: MyColors.myOrange,
              radius: 200.r,
              height: 40.h,
              width: 40.w,
              textSize: 17.sp,
              right: 10.w,
              left: 10.w,
            ),
            containers(
              text: 'ضع أهدافًا مالية شخصية واضحة',
              backgroundColor: MyColors.myOrange,
              radius: 10.r,
              height: 30.h,
              textSize: 12.sp,
              right: 0,
              left: 0.w,
            ),
          ],
        ),
        Gap(5.h),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            containers(
              text: 'شرح',
              backgroundColor: MyColors.myOrange,
              radius: 5.r,
              height: 20.h,
              textSize: 12.sp,
              right: 10.w,
              left: 10.w,
              textHeight: 0,
            ),
            containers(
              text:
                  'حدد أهدافًا مالية طويلة المدى مثل شراء منزل، الادخار \nللتقاعد، أو تأسيس مشروع خاص بك. قسم هذه الأهداف \nإلى مراحل صغيرة وحدد خطة مالية واضحة لتحقيقها على \n.مدى السنوات القادمة',
              backgroundColor: MyColors.myOrange,
              radius: 10.r,
              textSize: 12.sp,
              right: 0,
              left: 0.w,
              textHeight: 0,
            ),
          ],
        ),
        Gap(10.h),
        Row(
          mainAxisAlignment:
              MainAxisAlignment.end, // Adjust row size to content
          children: [
            containers(
              text: 'ابحث عن فرص إضافية للدخل',
              backgroundColor: MyColors.myOrange,
              radius: 10.r,
              height: 30.h,
              textSize: 12.sp,
              right: 0,
              left: 10.w,
            ),
            containers(
              text: 'E',
              backgroundColor: MyColors.myOrange,
              radius: 200.r,
              height: 40.h,
              width: 40.w,
              textSize: 17.sp,
              right: 10.w,
              left: 10.w,
            ),
          ],
        ),
        Gap(5.h),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            containers(
              text:
                  'لا تعتمد فقط على راتبك الأساسي. حاول البحث عن فرص \nلزيادة دخلك من خلال تقديم خدمات استشارية، العمل \nكمستقل، أو حتى الاستثمار في أصول صغيرة مثل العقارات \n.أو الأسهم',
              backgroundColor: MyColors.myOrange,
              radius: 10.r,
              textSize: 12.sp,
              right: 0,
              left: 10.w,
              textHeight: 0,
            ),
            containers(
              text: 'شرح',
              backgroundColor: MyColors.myOrange,
              radius: 5.r,
              height: 20.h,
              textSize: 12.sp,
              right: 10.w,
              left: 10.w,
              textHeight: 0,
            ),
          ],
        ),
        Gap(10.h),
        Row(
          mainAxisAlignment:
              MainAxisAlignment.start, // Adjust row size to content
          children: [
            containers(
              text: 'E',
              backgroundColor: MyColors.myOrange,
              radius: 200.r,
              height: 40.h,
              width: 40.w,
              textSize: 17.sp,
              right: 10.w,
              left: 10.w,
            ),
            containers(
              text: 'S استعد للانتقال إلى الفئة',
              backgroundColor: MyColors.myOrange,
              radius: 10.r,
              height: 30.h,
              textSize: 12.sp,
              right: 0,
              left: 0.w,
            ),
          ],
        ),
        Gap(5.h),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            containers(
              text: 'شرح',
              backgroundColor: MyColors.myOrange,
              radius: 5.r,
              height: 20.h,
              textSize: 12.sp,
              right: 10.w,
              left: 10.w,
              textHeight: 0,
            ),
            containers(
              text:
                  'مع اكتسابك للمهارات الجديدة وبناء دخل إضافي، حاول \nالاستعداد للانتقال من العمل كموظف إلى فئة العمل الحر. \nفكر في كيفية تحويل عملك الجانبي إلى مصدر دخل رئيسي \n.يمكنك الاعتماد عليه',
              backgroundColor: MyColors.myOrange,
              radius: 10.r,
              textSize: 12.sp,
              right: 0,
              left: 0.w,
              textHeight: 0,
            ),
          ],
        ),
        Gap(20.h),
        const ReferencesContainer(
          category: 'الموظف',
          bookNames: [
            '"كيف تكسب الأصدقاء وتؤثر في الناس" – ديل كارنيجي',
            '"العادات السبع للأشخاص الأكثر فعالية" – ستيفن كوفي',
            '"التفكير السريع والبطيء" – دانيال كانيمان',
            '"الطريق إلى القيادة" – جون سي. ماكسويل',
            '"تأملات في الإدارة" – بيتر دراكر',
            '"الذكاء المالي الشخصي" – كارين بيرمان وجو نايت'
          ],
        ),
        Gap(20.h),
      ],
    );
  }
}
