import 'package:cashflow/constants/my_colors.dart';
import 'package:cashflow/features/ideas_screen/ui/widgets/containers_for_ideas.dart';
import 'package:cashflow/features/ideas_screen/ui/widgets/horizontal_line_with_text.dart';
import 'package:cashflow/features/ideas_screen/ui/widgets/references_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class FreelancingIdeasTextAndBooks extends StatelessWidget {
  const FreelancingIdeasTextAndBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        horizontalLineWithText('فئة العمل الحر'),
        Gap(20.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            containers(
              text: 'التسويق لخدماتك بفعالية',
              backgroundColor: MyColors.myGreen,
              radius: 10.r,
              height: 30.h,
              textSize: 12.sp,
              right: 0,
              left: 10.w,
            ),
            containers(
              text: 'S',
              backgroundColor: MyColors.myGreen,
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
                  'بمجرد أن تبدأ في العمل الحر، عليك أن تتقن فن التسويق \nالذاتي. أنشئ موقعًا شخصيًا يعرض خدماتك ومشاريعك \nالسابقة، وكن نشطًا على وسائل التواصل الاجتماعي \nمثل LinkedIn وTwitter. يمكنك استخدام المنصات \nمثل Fiverr وUpwork للوصول إلى عملاء جدد وزيادة \n.دائرة عملائك',
              backgroundColor: MyColors.myGreen,
              radius: 10.r,
              textSize: 12.sp,
              right: 0,
              left: 10.w,
              textHeight: 0,
            ),
            containers(
              text: 'شرح',
              backgroundColor: MyColors.myGreen,
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
              text: 'S',
              backgroundColor: MyColors.myGreen,
              radius: 200.r,
              height: 40.h,
              width: 40.w,
              textSize: 17.sp,
              right: 0.w,
              left: 10.w,
            ),
            containers(
              text: 'تنظيم وقتك بشكل فعال',
              backgroundColor: MyColors.myGreen,
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
              backgroundColor: MyColors.myGreen,
              radius: 5.r,
              height: 20.h,
              textSize: 12.sp,
              right: 0.w,
              left: 10.w,
              textHeight: 0,
            ),
            containers(
              text:
                  'عندما تعمل لنفسك، تكون إدارة وقتك أحد أهم العوامل في\nنجاحك. قسم يومك إلى فترات عمل محددة، واجعل لكل \nفترة أهدافًا واضحة. استخدم أدوات مثل Trello أو Asana \nلإدارة مشاريعك ومهامك اليومية. هذا سيساعدك في \n.تحقيق توازن بين حياتك الشخصية والعملية',
              backgroundColor: MyColors.myGreen,
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
              text: 'تعلم كيفية تحديد أسعار خدماتك',
              backgroundColor: MyColors.myGreen,
              radius: 10.r,
              height: 30.h,
              textSize: 12.sp,
              right: 0,
              left: 10.w,
            ),
            containers(
              text: 'S',
              backgroundColor: MyColors.myGreen,
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
                  'كعامل حر، يجب أن تعرف كيف تحدد أسعارًا مناسبة \nلخدماتك تعكس قيمتك ومهاراتك. قم بدراسة السوق \nوتحليل الأسعار التي يقدمها الآخرون في مجالك، ثم حدد \nسعرًا يناسب جودة عملك. لا تخف من رفع أسعارك مع \n.اكتسابك للخبرة',
              backgroundColor: MyColors.myGreen,
              radius: 10.r,
              textSize: 12.sp,
              right: 0,
              left: 10.w,
              textHeight: 0,
            ),
            containers(
              text: 'شرح',
              backgroundColor: MyColors.myGreen,
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
              text: 'S',
              backgroundColor: MyColors.myGreen,
              radius: 200.r,
              height: 40.h,
              width: 40.w,
              textSize: 17.sp,
              right: 0.w,
              left: 10.w,
            ),
            containers(
              text: 'إدارة التدفق النقدي',
              backgroundColor: MyColors.myGreen,
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
              backgroundColor: MyColors.myGreen,
              radius: 5.r,
              height: 20.h,
              textSize: 12.sp,
              right: 0.w,
              left: 10.w,
              textHeight: 0,
            ),
            containers(
              text:
                  'عندما تعمل بشكل حر، قد تكون تدفقات الأموال غير \nمستقرة. لذا، من الضروري إدارة التدفق النقدي الخاص \nبك بعناية. ضع ميزانية شهرية واحرص على توفير جزء \n.من دخلك للطوارئ',
              backgroundColor: MyColors.myGreen,
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
              text: 'بناء شبكة من العملاء',
              backgroundColor: MyColors.myGreen,
              radius: 10.r,
              height: 30.h,
              textSize: 12.sp,
              right: 0,
              left: 10.w,
            ),
            containers(
              text: 'S',
              backgroundColor: MyColors.myGreen,
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
                  'حاول دائمًا توسيع شبكة عملائك. استخدم العلاقات \nالسابقة، واطلب من العملاء الراضين عن خدماتك تقديم \nتوصيات. العملاء الجدد يمكن أن يأتوا من التوصيات أو \n.من خلال شبكتك المهنية',
              backgroundColor: MyColors.myGreen,
              radius: 10.r,
              textSize: 12.sp,
              right: 0,
              left: 10.w,
              textHeight: 0,
            ),
            containers(
              text: 'شرح',
              backgroundColor: MyColors.myGreen,
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
              text: 'S',
              backgroundColor: MyColors.myGreen,
              radius: 200.r,
              height: 40.h,
              width: 40.w,
              textSize: 17.sp,
              right: 0.w,
              left: 10.w,
            ),
            containers(
              text: 'استثمر في نفسك وأدواتك',
              backgroundColor: MyColors.myGreen,
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
              backgroundColor: MyColors.myGreen,
              radius: 5.r,
              height: 20.h,
              textSize: 12.sp,
              right: 0.w,
              left: 10.w,
              textHeight: 0,
            ),
            containers(
              text:
                  'كعامل حر، عليك أن تستثمر في نفسك باستمرار. قم \nبشراء الأدوات التي تساعدك على تقديم خدمات بجودة \nعالية، سواء كانت برامج تصميم، أدوات إنتاجية، أو حتى \n.تحديث معداتك',
              backgroundColor: MyColors.myGreen,
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
              text: 'إدارة الأعمال بكفاءة',
              backgroundColor: MyColors.myGreen,
              radius: 10.r,
              height: 30.h,
              textSize: 12.sp,
              right: 0,
              left: 10.w,
            ),
            containers(
              text: 'S',
              backgroundColor: MyColors.myGreen,
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
                  'مع توسع عملك الحر، فكر في كيفية تحسين عملياتك. \nيمكنك استخدام برمجيات المحاسبة لتتبع الفواتير والنفقات، \nوتخصيص وقت لكل مشروع بناءً على أولويته. سيساعدك \n.هذا على توفير الوقت وزيادة كفاءة العمل',
              backgroundColor: MyColors.myGreen,
              radius: 10.r,
              textSize: 12.sp,
              right: 0,
              left: 10.w,
              textHeight: 0,
            ),
            containers(
              text: 'شرح',
              backgroundColor: MyColors.myGreen,
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
              text: 'S',
              backgroundColor: MyColors.myGreen,
              radius: 200.r,
              height: 40.h,
              width: 40.w,
              textSize: 17.sp,
              right: 0.w,
              left: 10.w,
            ),
            containers(
              text: 'الاستعداد للتوسع',
              backgroundColor: MyColors.myGreen,
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
              backgroundColor: MyColors.myGreen,
              radius: 5.r,
              height: 20.h,
              textSize: 12.sp,
              right: 0.w,
              left: 10.w,
              textHeight: 0,
            ),
            containers(
              text:
                  'إذا كنت تحصل على عدد متزايد من العملاء، فكر في \nتوظيف أشخاص آخرين لمساعدتك. قد تحتاج إلى مساعد \nإداري، أو شخص لتقديم خدمات إضافية، مما سيمكنك \n.من تقديم خدمات أكثر لعملائك الحاليين والجدد',
              backgroundColor: MyColors.myGreen,
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
              text: 'التعلم المستمر وتطوير المهارات',
              backgroundColor: MyColors.myGreen,
              radius: 10.r,
              height: 30.h,
              textSize: 12.sp,
              right: 0,
              left: 10.w,
            ),
            containers(
              text: 'S',
              backgroundColor: MyColors.myGreen,
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
                  'العالم يتغير بسرعة، لذا من المهم أن تبقى على اطلاع \nبأحدث التقنيات والأساليب في مجالك. احرص على تعلم \nكل جديد، سواء من خلال الدورات التدريبية، أو متابعة \n.المدونات والمواقع المتخصصة في مجالك',
              backgroundColor: MyColors.myGreen,
              radius: 10.r,
              textSize: 12.sp,
              right: 0,
              left: 10.w,
              textHeight: 0,
            ),
            containers(
              text: 'شرح',
              backgroundColor: MyColors.myGreen,
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
              text: 'S',
              backgroundColor: MyColors.myGreen,
              radius: 200.r,
              height: 40.h,
              width: 40.w,
              textSize: 17.sp,
              right: 0.w,
              left: 10.w,
            ),
            containers(
              text: 'التحضير للانتقال إلى الفئة B',
              backgroundColor: MyColors.myGreen,
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
              backgroundColor: MyColors.myGreen,
              radius: 5.r,
              height: 20.h,
              textSize: 12.sp,
              right: 0.w,
              left: 10.w,
              textHeight: 0,
            ),
            containers(
              text:
                  'عندما يكون لديك قاعدة عملاء ثابتة ودخل منتظم، حاول \nالتفكير في كيفية تحويل عملك الحر إلى شركة صغيرة. فكر \n.في بناء نظام يعتمد على فريق عمل وليس عليك فقط',
              backgroundColor: MyColors.myGreen,
              radius: 10.r,
              textSize: 12.sp,
              right: 0,
              left: 10.w,
              textHeight: 0,
            ),
          ],
        ),
        Gap(20.h),
        const ReferencesContainer(
          category: 'العمل الحر',
          bookNames: [
            '"العمل الحر: كيف تبدأ وتنجح كمستقل" – ماثيو لو',
            '"أسرار النجاح في العمل الحر" – كريستين كافالير',
            '"كيف تحقق النجاح كمستقل" – أليسون غرين',
            '"ريادة الأعمال للمستقلين" – جاك كينيدي',
            '"العمل المستقل كمسار مهني" – ديانا كوبر'
          ],
        ),
        Gap(20.h),
      ],
    );
  }
}
