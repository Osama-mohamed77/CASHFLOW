import 'package:cashflow/constants/my_colors.dart';
import 'package:cashflow/features/ideas_screen/ui/widgets/containers_for_ideas.dart';
import 'package:cashflow/features/ideas_screen/ui/widgets/horizontal_line_with_text.dart';
import 'package:cashflow/features/ideas_screen/ui/widgets/references_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class EmployerIdeasTextAndBooks extends StatelessWidget {
  const EmployerIdeasTextAndBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        horizontalLineWithText('فئة صاحب العمل'),
        Gap(20.h),
        Row(
          mainAxisAlignment:
              MainAxisAlignment.end, // Adjust row size to content
          children: [
            containers(
              text: 'بناء فريق عمل قوي',
              backgroundColor: MyColors.myBlue,
              radius: 10.r,
              height: 30.h,
              textSize: 12.sp,
              right: 0,
              left: 10.w,
            ),
            containers(
              text: 'B',
              backgroundColor: MyColors.myBlue,
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
                  'عندما تنتقل من العمل الحر إلى إدارة شركة، يصبح بناء \nفريق عمل قوي من أهم عوامل النجاح. احرص على توظيف \nأشخاص يمتلكون مهارات تكمل بعضها البعض، وتأكد من \n.توزيع المهام بوضوح',
              backgroundColor: MyColors.myBlue,
              radius: 10.r,
              textSize: 12.sp,
              right: 0,
              left: 10.w,
              textHeight: 0,
            ),
            containers(
              text: 'شرح',
              backgroundColor: MyColors.myBlue,
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
              text: 'B',
              backgroundColor: MyColors.myBlue,
              radius: 200.r,
              height: 40.h,
              width: 40.w,
              textSize: 17.sp,
              right: 0.w,
              left: 10.w,
            ),
            containers(
              text: 'تطوير هيكلية تنظيمية',
              backgroundColor: MyColors.myBlue,
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
              backgroundColor: MyColors.myBlue,
              radius: 5.r,
              height: 20.h,
              textSize: 12.sp,
              right: 0.w,
              left: 10.w,
              textHeight: 0,
            ),
            containers(
              text:
                  'ضع خطة تنظيمية واضحة للشركة تشمل الأدوار \nوالمسؤوليات. الهيكلية الجيدة تساعد على تنظيم العمل \nوتقليل الفوضى، مما يؤدي إلى زيادة الإنتاجية وتحقيق \n.أهداف الشركة',
              backgroundColor: MyColors.myBlue,
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
              text: 'تفويض المهام بفعالية',
              backgroundColor: MyColors.myBlue,
              radius: 10.r,
              height: 30.h,
              textSize: 12.sp,
              right: 0,
              left: 10.w,
            ),
            containers(
              text: 'B',
              backgroundColor: MyColors.myBlue,
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
                  'كصاحب عمل، يجب أن تتعلم فن التفويض. لا يمكن أن \nتقوم بكل شيء بنفسك، لذا احرص على تعيين أشخاص \nأكفاء يمكنهم تحمل المسؤوليات والمهام الكبيرة. التفويض \n.الجيد يتيح لك التركيز على استراتيجية نمو شركتك',
              backgroundColor: MyColors.myBlue,
              radius: 10.r,
              textSize: 12.sp,
              right: 0,
              left: 10.w,
              textHeight: 0,
            ),
            containers(
              text: 'شرح',
              backgroundColor: MyColors.myBlue,
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
              text: 'B',
              backgroundColor: MyColors.myBlue,
              radius: 200.r,
              height: 40.h,
              width: 40.w,
              textSize: 17.sp,
              right: 0.w,
              left: 10.w,
            ),
            containers(
              text: 'استخدام التكنولوجيا لتحسين الكفاءة',
              backgroundColor: MyColors.myBlue,
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
              backgroundColor: MyColors.myBlue,
              radius: 5.r,
              height: 20.h,
              textSize: 12.sp,
              right: 0.w,
              left: 10.w,
              textHeight: 0,
            ),
            containers(
              text:
                  'استخدم التكنولوجيا لتسريع العمل وتقليل الأخطاء. \nيمكنك استخدام أدوات إدارة المشاريع، برامج المحاسبة، \n.وتقنيات الأتمتة لتحسين الكفاءة وزيادة الإنتاجية',
              backgroundColor: MyColors.myBlue,
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
              text: 'تحسين التدفق النقدي',
              backgroundColor: MyColors.myBlue,
              radius: 10.r,
              height: 30.h,
              textSize: 12.sp,
              right: 0,
              left: 10.w,
            ),
            containers(
              text: 'B',
              backgroundColor: MyColors.myBlue,
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
                  'إدارة التدفق النقدي للشركة أمر حيوي. احرص على وجود \nسيولة كافية لتغطية النفقات الجارية، واحتفظ دائمًا \n.باحتياطي نقدي للطوارئ أو الفرص الاستثمارية المفاجئة',
              backgroundColor: MyColors.myBlue,
              radius: 10.r,
              textSize: 12.sp,
              right: 0,
              left: 10.w,
              textHeight: 0,
            ),
            containers(
              text: 'شرح',
              backgroundColor: MyColors.myBlue,
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
              text: 'B',
              backgroundColor: MyColors.myBlue,
              radius: 200.r,
              height: 40.h,
              width: 40.w,
              textSize: 17.sp,
              right: 0.w,
              left: 10.w,
            ),
            containers(
              text: 'بناء ثقافة قوية للشركة',
              backgroundColor: MyColors.myBlue,
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
              backgroundColor: MyColors.myBlue,
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
              backgroundColor: MyColors.myBlue,
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
              text: 'التوسع والاستثمار في النمو',
              backgroundColor: MyColors.myBlue,
              radius: 10.r,
              height: 30.h,
              textSize: 12.sp,
              right: 0,
              left: 10.w,
            ),
            containers(
              text: 'B',
              backgroundColor: MyColors.myBlue,
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
                  'بمجرد أن يبدأ عملك في الاستقرار، فكر في توسيع \nنشاطاتك. سواء كان ذلك عن طريق فتح فروع جديدة، \nأو توسيع نطاق المنتجات والخدمات التي تقدمها، أو حتى \n.الدخول في أسواق جديدة',
              backgroundColor: MyColors.myBlue,
              radius: 10.r,
              textSize: 12.sp,
              right: 0,
              left: 10.w,
              textHeight: 0,
            ),
            containers(
              text: 'شرح',
              backgroundColor: MyColors.myBlue,
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
              text: 'B',
              backgroundColor: MyColors.myBlue,
              radius: 200.r,
              height: 40.h,
              width: 40.w,
              textSize: 17.sp,
              right: 0.w,
              left: 10.w,
            ),
            containers(
              text: 'إدارة المخاطر',
              backgroundColor: MyColors.myBlue,
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
              backgroundColor: MyColors.myBlue,
              radius: 5.r,
              height: 20.h,
              textSize: 12.sp,
              right: 0.w,
              left: 10.w,
              textHeight: 0,
            ),
            containers(
              text:
                  'احرص على وضع خطط لإدارة المخاطر المحتملة التي قد \nتؤثر على عملك، سواء كانت اقتصادية، قانونية، أو \nتشغيلية. التحضير للمخاطر يساعد على تقليل التأثيرات \n.السلبية على الشركة',
              backgroundColor: MyColors.myBlue,
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
              text: 'التسويق المستمر',
              backgroundColor: MyColors.myBlue,
              radius: 10.r,
              height: 30.h,
              textSize: 12.sp,
              right: 0,
              left: 10.w,
            ),
            containers(
              text: 'B',
              backgroundColor: MyColors.myBlue,
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
                  'حتى لو كانت شركتك ناجحة، فإن التسويق المستمر \nضروري لجذب عملاء جدد والحفاظ على ولاء العملاء الحاليين. \nاستخدم استراتيجيات تسويق مبتكرة وتابع أداء حملاتك \n.بشكل مستمر',
              backgroundColor: MyColors.myBlue,
              radius: 10.r,
              textSize: 12.sp,
              right: 0,
              left: 10.w,
              textHeight: 0,
            ),
            containers(
              text: 'شرح',
              backgroundColor: MyColors.myBlue,
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
              text: 'B',
              backgroundColor: MyColors.myBlue,
              radius: 200.r,
              height: 40.h,
              width: 40.w,
              textSize: 17.sp,
              right: 0.w,
              left: 10.w,
            ),
            containers(
              text: 'I الاستعداد للانتقال إلى الفئة',
              backgroundColor: MyColors.myBlue,
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
              backgroundColor: MyColors.myBlue,
              radius: 5.r,
              height: 20.h,
              textSize: 12.sp,
              right: 0.w,
              left: 10.w,
              textHeight: 0,
            ),
            containers(
              text:
                  'عندما يكون لديك شركة ناجحة ومستقرة، فكر في استثمار \nالأرباح في أصول مثل العقارات أو الأسهم. هذا سيزيد من \n.تنويع مصادر دخلك ويمنحك استقلالية مالية أكبر',
              backgroundColor: MyColors.myBlue,
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
          category: 'صاحب العمل',
          bookNames: [
            '"ابدأ من حيث أنت" – كريس جيارد',
            '"فكر وازداد ثراء" – نابليون هيل',
            '"الابتكار في الأعمال" – بيتر دراكر',
            '"الأب الغني والأب الفقير" – روبرت كيوساكي',
            '"أصل الفكرة: كيف تبدأ وتبني شركة ناجحة" – إريك ريس',
            '"الأعمال الناجحة: استراتيجيات النمو" – جيف بيزوس'
          ],
        ),
        Gap(20.h),
      ],
    );
  }
}
