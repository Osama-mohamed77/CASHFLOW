import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:cashflow/core/constants/my_colors.dart';
import 'package:cashflow/core/widgets/containers_for_ideas.dart';
import 'package:cashflow/core/widgets/horizontal_line_with_text.dart';
import 'package:cashflow/core/widgets/references_container.dart';

class IdeasScreen extends StatefulWidget {
  const IdeasScreen({super.key});
  static String id = 'Ideas';

  @override
  State<IdeasScreen> createState() => _IdeasScreenState();
}

class _IdeasScreenState extends State<IdeasScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: Container(
            decoration: BoxDecoration(
              color: MyColors.myBackground,
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(20.r),
              ),
              boxShadow: const [
                BoxShadow(
                  color: Color.fromARGB(255, 39, 39, 39),
                  offset: Offset(0, 5),
                ),
              ],
            ),
            child: AppBar(
              automaticallyImplyLeading: false,
              title: Center(
                child: Text(
                  'نصائح عن المال',
                  style: TextStyle(color: Colors.white, fontSize: 22.sp),
                ),
              ),
              backgroundColor: Colors.transparent,
              elevation: 0,
            ),
          )),
      backgroundColor: MyColors.myBackground,
      body: ListView(
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
          horizontalLineWithText('فئة العمل الحر'),
          Gap(20.h),
          Row(
            mainAxisAlignment:
                MainAxisAlignment.end, // Adjust row size to content
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
          horizontalLineWithText('فئة المستثمر'),
          Gap(20.h),
          Gap(10.h),
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
      ),
    );
  }
}
