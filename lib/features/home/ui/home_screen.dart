import 'package:cashflow/features/home/logic/home_provider.dart';
import 'package:cashflow/features/home/ui/widgets/active_category.dart';
import 'package:cashflow/features/home/ui/widgets/close_category.dart';
import 'package:cashflow/features/home/ui/widgets/box_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:cashflow/constants/my_colors.dart';
import 'package:cashflow/features/home/ui/widgets/little_ideas.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  static String id = 'Home';
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    HomeProvider homeProvider = Provider.of<HomeProvider>(context);
    return Scaffold(
      backgroundColor: MyColors.myBackground,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.w),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                Gap(20.h),
                const ActiveCategory(
                  backgroundColor: MyColors.myOrange,
                  shadowColor: Color(0xffAB7825),
                  icon: Icons.work,
                  iconColor: Colors.white,
                  title: 'E - Employee (موظف) انت الان في الفئة',
                  hint: 'دعنا نعمل علي تطوير مهاراتك',
                  titleColor: Colors.white,
                  hintColor: Color(0xffE4E4E4),
                ),
                Gap(20.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const LittleIdea(
                      id: 1,
                      text:
                          '.ابدأ بتطوير مهارات جديدة تساهم في تحقيق دخل إضافي بجانب وظيفتك الأساسية',
                      circleColor: MyColors.myOrange,
                      iconColor: MyColors.myOrange,
                      shadowColor: Color(0xffAB7825),
                      backgroundColor: MyColors.myOrange,
                      textColor: MyColors.myOrange,
                    ),
                    Gap(50.w),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Gap(50.w),
                    const LittleIdea(
                      id: 2,
                      text:
                          '.ابحث عن فرص عمل حر أو عمل جانبي لتحقيق استقلال مالي أكبر',
                      circleColor: MyColors.myOrange,
                      iconColor: MyColors.myOrange,
                      shadowColor: Color(0xffAB7825),
                      backgroundColor: MyColors.myOrange,
                      textColor: MyColors.myOrange,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const LittleIdea(
                      id: 3,
                      text:
                          '.أنشئ خطة لتحويل مهاراتك الحالية إلى مصدر دخل إضافي',
                      circleColor: MyColors.myOrange,
                      iconColor: MyColors.myOrange,
                      shadowColor: Color(0xffAB7825),
                      backgroundColor: MyColors.myOrange,
                      textColor: MyColors.myOrange,
                    ),
                    Gap(50.w),
                  ],
                ),
                Gap(20.h),
                if (!homeProvider.sCategory)
                  //If the category is closed, a test will be conducted to open it

                  ColesCategory(
                    ontap: () {
                      showModalBottomSheet(
                          backgroundColor: Colors.black.withValues(alpha: 0),
                          context: context,
                          builder: (BuildContext context) {
                            return BoxBottomSheet(
                              firstQuestion:
                                  'هل بدأت بالفعل في تحقيق دخل إضافي بجانب وظيفتك الأساسية؟',
                              secondQuestion:
                                  'هل قدمت خدمات أو عملت بشكل حر في أي مجال؟',
                              thirdQuestion:
                                  'هل لديك الآن مصدر دخل مستقل عن راتبك الأساسي؟',
                              category: 'S',
                            );
                          });
                    },
                    backgroundColor: MyColors.myCloseCategory,
                    shadowColor: const Color(0xff3C3C3E),
                    icon: Icons.store_rounded,
                    iconColor: MyColors.myTextAndIconColorForCloseCategory,
                    title: 'هذه الفئه مغلقه',
                    hint: 'اضغط للاجابة علي الاستبيان لفتح هذه الفئه',
                    titleColor: MyColors.myTextAndIconColorForCloseCategory,
                    hintColor: MyColors.myTextAndIconColorForCloseCategory,
                  ),

                //Check if the category is open

                if (homeProvider.sCategory) ...[
                  const ActiveCategory(
                    backgroundColor: MyColors.myGreen,
                    shadowColor: Color(0xff228832),
                    icon: Icons.store_rounded,
                    iconColor: Colors.white,
                    title: 'S - Self-employed (عمل حر) انت الان في الفئة',
                    hint: 'دعنا نعمل علي تطوير مهاراتك',
                    titleColor: Colors.white,
                    hintColor: Color(0xffE4E4E4),
                  ),
                  Gap(20.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Gap(50.w),
                      const LittleIdea(
                        id: 4,
                        text:
                            '.ابدأ بتوسيع نطاق عملك الحر ليشمل توظيف فريق أو العمل مع شركاء',
                        circleColor: MyColors.myGreen,
                        iconColor: MyColors.myGreen,
                        shadowColor: Color(0xff228832),
                        backgroundColor: MyColors.myGreen,
                        textColor: MyColors.myGreen,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const LittleIdea(
                        id: 5,
                        text:
                            '.طور خطة لبناء نظام عمل يدير نفسه جزئيًا أو كليًا بدون تدخل مباشر منك',
                        circleColor: MyColors.myGreen,
                        iconColor: MyColors.myGreen,
                        shadowColor: Color(0xff228832),
                        backgroundColor: MyColors.myGreen,
                        textColor: MyColors.myGreen,
                      ),
                      Gap(50.w),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Gap(50.w),
                      const LittleIdea(
                        id: 6,
                        text:
                            '.اعمل على تحويل عملك الخاص إلى شركة أو نظام يولد دخلًا ثابتًا ومستقلًا',
                        circleColor: MyColors.myGreen,
                        iconColor: MyColors.myGreen,
                        shadowColor: Color(0xff228832),
                        backgroundColor: MyColors.myGreen,
                        textColor: MyColors.myGreen,
                      ),
                    ],
                  ),
                ],

                Gap(20.h),

                //If the category is closed, a test will be conducted to open it

                if (homeProvider.sCategory && !homeProvider.bCategory)
                  ColesCategory(
                    ontap: () {
                      showModalBottomSheet(
                          backgroundColor: Colors.black.withAlpha(0),
                          context: context,
                          builder: (BuildContext context) {
                            return BoxBottomSheet(
                              firstQuestion:
                                  'هل قمت بتوسيع عملك الحر وبدأت بتوظيف أشخاص؟',
                              secondQuestion:
                                  'هل قمت بإنشاء نظام عمل أو عمليات تجارية لا تعتمد على وجودك المباشر دائمًا؟',
                              thirdQuestion:
                                  'هل بدأت بجني دخل ثابت من نظام أو عمل خاص بك بشكل أوسع؟',
                              category: 'B',
                            );
                          });
                    },
                    backgroundColor: MyColors.myCloseCategory,
                    shadowColor: const Color(0xff3C3C3E),
                    icon: Icons.factory_sharp,
                    iconColor: MyColors.myTextAndIconColorForCloseCategory,
                    title: 'هذه الفئه مغلقه',
                    hint: 'اضغط للاجابة علي الاستبيان لفتح هذه الفئه',
                    titleColor: MyColors.myTextAndIconColorForCloseCategory,
                    hintColor: MyColors.myTextAndIconColorForCloseCategory,
                  ),

                //Check if the category is open
                if (homeProvider.bCategory) ...[
                  const ActiveCategory(
                    backgroundColor: MyColors.myBlue,
                    shadowColor: Color(0xff2A7887),
                    icon: Icons.factory_sharp,
                    iconColor: Colors.white,
                    title: 'B - Business owner (صاحب عمل) انت الان في الفئة',
                    hint: 'دعنا نعمل علي تطوير مهاراتك',
                    titleColor: Colors.white,
                    hintColor: Color(0xffE4E4E4),
                  ),
                  Gap(20.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const LittleIdea(
                        text:
                            '.ابدأ بالبحث عن فرص استثمارية تولد دخلًا سلبيًا مثل الأسهم أو العقارات',
                        circleColor: MyColors.myBlue,
                        iconColor: MyColors.myBlue,
                        shadowColor: Color(0xff2A7887),
                        backgroundColor: MyColors.myBlue,
                        textColor: MyColors.myBlue,
                        id: 7,
                      ),
                      Gap(50.w),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Gap(50.w),
                      const LittleIdea(
                        id: 8,
                        text:
                            '.قم بتنويع استثماراتك لضمان توزيع المخاطر وزيادة العوائد المالية',
                        circleColor: MyColors.myBlue,
                        iconColor: MyColors.myBlue,
                        shadowColor: Color(0xff2A7887),
                        backgroundColor: MyColors.myBlue,
                        textColor: MyColors.myBlue,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const LittleIdea(
                        id: 9,
                        text:
                            '.اعمل على تحويل جزء من أرباح شركتك أو عملك إلى أصول استثمارية تولد دخلًا مستمرًا',
                        circleColor: MyColors.myBlue,
                        iconColor: MyColors.myBlue,
                        shadowColor: Color(0xff2A7887),
                        backgroundColor: MyColors.myBlue,
                        textColor: MyColors.myBlue,
                      ),
                      Gap(50.w),
                    ],
                  ),
                ],

                //If the category is closed, a test will be conducted to open it
                Gap(20.w),

                if (homeProvider.bCategory && !homeProvider.iCategory)
                  ColesCategory(
                    ontap: () {
                      showModalBottomSheet(
                          backgroundColor: Colors.black.withValues(alpha: 0),
                          context: context,
                          builder: (BuildContext context) {
                            return BoxBottomSheet(
                              firstQuestion:
                                  'هل قمت باستثمار جزء من دخلك في أصول مثل الأسهم أو العقارات؟',
                              secondQuestion:
                                  'هل تحقق دخلًا سلبيًا من استثماراتك؟',
                              thirdQuestion:
                                  'هل تحقق دخلًا سلبيًا من استثماراتك؟',
                              category: 'I',
                            );
                          });
                    },
                    backgroundColor: MyColors.myCloseCategory,
                    shadowColor: const Color(0xff3C3C3E),
                    icon: Icons.money_rounded,
                    iconColor: MyColors.myTextAndIconColorForCloseCategory,
                    title: 'هذه الفئه مغلقه',
                    hint: 'اضغط للاجابة علي الاستبيان لفتح هذه الفئه',
                    titleColor: MyColors.myTextAndIconColorForCloseCategory,
                    hintColor: MyColors.myTextAndIconColorForCloseCategory,
                  ),

                //Check if the category is open

                if (homeProvider.iCategory)
                  const ActiveCategory(
                    backgroundColor: MyColors.myRed,
                    shadowColor: Color(0xff832D2F),
                    icon: Icons.money_rounded,
                    iconColor: Colors.white,
                    title: 'I - Investor (مستثمر) انت الان في الفئة',
                    hint: 'انتقل الي صفحة النصائح للحصول علي نصائح تناسبك',
                    titleColor: Colors.white,
                    hintColor: Color(0xffE4E4E4),
                  ),
                // Gap(40.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
