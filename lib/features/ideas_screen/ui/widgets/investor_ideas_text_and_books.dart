import 'package:cashflow/constants/my_colors.dart';
import 'package:cashflow/features/ideas_screen/ui/widgets/containers_for_ideas.dart';
import 'package:cashflow/features/ideas_screen/ui/widgets/horizontal_line_with_text.dart';
import 'package:cashflow/features/ideas_screen/ui/widgets/references_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class InvestorIdeasTextAndBooks extends StatelessWidget {
  const InvestorIdeasTextAndBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        horizontalLineWithText('فئة المستثمر'),
        Gap(20.h),
        Row(
          mainAxisAlignment:
              MainAxisAlignment.end, // Adjust row size to content
          children: [
            containers(
              text: 'التنويع في استثماراتك',
              backgroundColor: MyColors.myRed,
              radius: 10.r,
              height: 30.h,
              textSize: 12.sp,
              right: 0,
              left: 10.w,
            ),
            containers(
              text: 'I',
              backgroundColor: MyColors.myRed,
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
                  'لا تضع كل بيضك في سلة واحدة. قم بتنويع استثماراتك \nبين الأسهم، العقارات، السندات، وغيرها من الأصول. \n.التنويع يقلل من المخاطر ويزيد من فرص العوائد الجيدة',
              backgroundColor: MyColors.myRed,
              radius: 10.r,
              textSize: 12.sp,
              right: 0,
              left: 10.w,
              textHeight: 0,
            ),
            containers(
              text: 'شرح',
              backgroundColor: MyColors.myRed,
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
              text: 'I',
              backgroundColor: MyColors.myRed,
              radius: 200.r,
              height: 40.h,
              width: 40.w,
              textSize: 17.sp,
              right: 0.w,
              left: 10.w,
            ),
            containers(
              text: 'التركيز على العوائد طويلة الأجل',
              backgroundColor: MyColors.myRed,
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
              backgroundColor: MyColors.myRed,
              radius: 5.r,
              height: 20.h,
              textSize: 12.sp,
              right: 0.w,
              left: 10.w,
              textHeight: 0,
            ),
            containers(
              text:
                  'استثمر في أصول تنمو بمرور الوقت وتوفر لك عوائد ثابتة، \nمثل العقارات أو الأسهم ذات الأرباح المستقرة. العوائد \nطويلة الأجل توفر استقرارًا ماليًا وتقلل من المخاطر قصيرة \n.الأجل',
              backgroundColor: MyColors.myRed,
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
              text: 'التحليل المالي',
              backgroundColor: MyColors.myRed,
              radius: 10.r,
              height: 30.h,
              textSize: 12.sp,
              right: 0,
              left: 10.w,
            ),
            containers(
              text: 'I',
              backgroundColor: MyColors.myRed,
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
                  'قبل الاستثمار في أي أصل، قم بتحليل العوائد والمخاطر \nبعناية. استخدم أدوات التحليل المالي لتقييم الأداء السابق \n.والمتوقع للاستثمارات المختلفة',
              backgroundColor: MyColors.myRed,
              radius: 10.r,
              textSize: 12.sp,
              right: 0,
              left: 10.w,
              textHeight: 0,
            ),
            containers(
              text: 'شرح',
              backgroundColor: MyColors.myRed,
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
              text: 'I',
              backgroundColor: MyColors.myRed,
              radius: 200.r,
              height: 40.h,
              width: 40.w,
              textSize: 17.sp,
              right: 0.w,
              left: 10.w,
            ),
            containers(
              text: 'استشارة الخبراء الماليين',
              backgroundColor: MyColors.myRed,
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
              backgroundColor: MyColors.myRed,
              radius: 5.r,
              height: 20.h,
              textSize: 12.sp,
              right: 0.w,
              left: 10.w,
              textHeight: 0,
            ),
            containers(
              text:
                  'لا تتردد في استشارة مستشارين ماليين أو مختصين في \nالاستثمار عند اتخاذ قرارات كبيرة، خاصة إذا كنت تخطط \nلاستثمارات كبيرة. الخبراء يمكنهم مساعدتك في تقييم \n.المخاطر وضمان اتخاذ قرارات استثمارية ذكية',
              backgroundColor: MyColors.myRed,
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
              text: 'الاستثمار في الأصول التي تولد دخلاً ثابتاً',
              backgroundColor: MyColors.myRed,
              radius: 10.r,
              height: 30.h,
              textSize: 12.sp,
              right: 0,
              left: 10.w,
            ),
            containers(
              text: 'I',
              backgroundColor: MyColors.myRed,
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
                  'ابحث عن الاستثمارات التي تدر دخلاً ثابتاً مثل العقارات \nالمؤجرة أو الأسهم ذات الأرباح الموزعة. هذه الاستثمارات \n.توفر دخلاً ثابتاً يمكن الاعتماد عليه',
              backgroundColor: MyColors.myRed,
              radius: 10.r,
              textSize: 12.sp,
              right: 0,
              left: 10.w,
              textHeight: 0,
            ),
            containers(
              text: 'شرح',
              backgroundColor: MyColors.myRed,
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
              text: 'I',
              backgroundColor: MyColors.myRed,
              radius: 200.r,
              height: 40.h,
              width: 40.w,
              textSize: 17.sp,
              right: 0.w,
              left: 10.w,
            ),
            containers(
              text: 'إدارة المخاطر',
              backgroundColor: MyColors.myRed,
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
              backgroundColor: MyColors.myRed,
              radius: 5.r,
              height: 20.h,
              textSize: 12.sp,
              right: 0.w,
              left: 10.w,
              textHeight: 0,
            ),
            containers(
              text:
                  'قم ببناء ثقافة عمل تعزز الابتكار والتعاون. ثقافة الشركة \nتلعب دورًا كبيرًا في جذب الموظفين والحفاظ عليهم، \n.وأيضًا في تحقيق رضا العملاء',
              backgroundColor: MyColors.myRed,
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
              text: 'مراجعة الاستثمارات بانتظام',
              backgroundColor: MyColors.myRed,
              radius: 10.r,
              height: 30.h,
              textSize: 12.sp,
              right: 0,
              left: 10.w,
            ),
            containers(
              text: 'I',
              backgroundColor: MyColors.myRed,
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
                  'قم بمراجعة أداء استثماراتك بشكل دوري وتأكد من أن \nاستراتيجيتك تحقق العوائد المطلوبة. إذا لم تكن \nالاستثمارات تحقق الأهداف، قم بتعديل استراتيجيتك \n.أو إعادة توزيع أموالك',
              backgroundColor: MyColors.myRed,
              radius: 10.r,
              textSize: 12.sp,
              right: 0,
              left: 10.w,
              textHeight: 0,
            ),
            containers(
              text: 'شرح',
              backgroundColor: MyColors.myRed,
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
              text: 'I',
              backgroundColor: MyColors.myRed,
              radius: 200.r,
              height: 40.h,
              width: 40.w,
              textSize: 17.sp,
              right: 0.w,
              left: 10.w,
            ),
            containers(
              text: 'البحث عن فرص جديدة',
              backgroundColor: MyColors.myRed,
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
              backgroundColor: MyColors.myRed,
              radius: 5.r,
              height: 20.h,
              textSize: 12.sp,
              right: 0.w,
              left: 10.w,
              textHeight: 0,
            ),
            containers(
              text:
                  'الأسواق المالية تتغير بسرعة. احرص دائمًا على متابعة \nالفرص الجديدة، سواء كانت في أسواق ناشئة، تقنيات \n.جديدة، أو حتى مجالات استثمارية غير تقليدية',
              backgroundColor: MyColors.myRed,
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
              text: 'التخطيط للضرائب والمصاريف الإضافية',
              backgroundColor: MyColors.myRed,
              radius: 10.r,
              height: 30.h,
              textSize: 12.sp,
              right: 0,
              left: 10.w,
            ),
            containers(
              text: 'I',
              backgroundColor: MyColors.myRed,
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
                  'تأكد من أن لديك خطة لإدارة الضرائب التي قد تترتب على \nاستثماراتك. الاستثمار قد يؤدي إلى تحقيق أرباح كبيرة، لكن \n.الضرائب يمكن أن تؤثر على صافي العوائد',
              backgroundColor: MyColors.myRed,
              radius: 10.r,
              textSize: 12.sp,
              right: 0,
              left: 10.w,
              textHeight: 0,
            ),
            containers(
              text: 'شرح',
              backgroundColor: MyColors.myRed,
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
              text: 'I',
              backgroundColor: MyColors.myRed,
              radius: 200.r,
              height: 40.h,
              width: 40.w,
              textSize: 17.sp,
              right: 0.w,
              left: 10.w,
            ),
            containers(
              text: 'التركيز على الاستدامة',
              backgroundColor: MyColors.myRed,
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
              backgroundColor: MyColors.myRed,
              radius: 5.r,
              height: 20.h,
              textSize: 12.sp,
              right: 0.w,
              left: 10.w,
              textHeight: 0,
            ),
            containers(
              text:
                  'ابحث عن استثمارات مستدامة تدوم على المدى الطويل \nوتساهم في تنمية مجالات اقتصادية جديدة. الاستثمارات \nالمستدامة غالبًا ما تكون أقل عرضة للمخاطر طويلة الأجل \n.وتوفر عوائد مستقرة',
              backgroundColor: MyColors.myRed,
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
          category: 'المستثمر',
          bookNames: [
            '"الاستثمار في الأسهم" – بينجامين غراهام',
            '"الأمن المالي: استراتيجيات الاستثمار الذكي" – ديفيد باخ',
            '"القواعد الذهبية للاستثمار" – تشارلي مانجر',
            '"استراتيجية الاستثمار الذكي" – بيتر لينش',
            '"الاستثمار الناجح في العقارات" – بروس نورمان',
            '"كيف تصبح مستثمراً ناجحاً" – وارن بافيت'
          ],
        ),
      ],
    );
  }
}
