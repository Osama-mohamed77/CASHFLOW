import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:cashflow/core/constants/my_colors.dart';
import 'package:cashflow/core/widgets/little_ideas.dart';

class Home extends StatelessWidget {
  static String id = 'Home';
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.myBackground,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 14.w),
        child: ListView(
          children: [
            Gap(20.h),
            const _CategoryWidget(
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
                  text: '.أنشئ خطة لتحويل مهاراتك الحالية إلى مصدر دخل إضافي',
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
            const _CategoryWidget(
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
            Gap(20.h),
            const _CategoryWidget(
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
            Gap(20.h),
            const _CategoryWidget(
              backgroundColor: MyColors.myRed,
              shadowColor: Color(0xff832D2F),
              icon: FontAwesomeIcons.moneyBillWave,
              iconColor: Colors.white,
              title: 'I - Investor (مستثمر) انت الان في الفئة',
              hint: 'انتقل الي صفحة النصائح للحصول علي نصائح تناسبك',
              titleColor: Colors.white,
              hintColor: Color(0xffE4E4E4),
            ),
            Gap(40.h),
          ],
        ),
      ),
    );
  }
}

class _CategoryWidget extends StatelessWidget {
  final Color backgroundColor;
  final Color shadowColor;
  final IconData icon;
  final Color iconColor;
  final String title;
  final String hint;
  final Color titleColor;
  final Color hintColor;

  const _CategoryWidget({
    required this.backgroundColor,
    required this.shadowColor,
    required this.icon,
    required this.iconColor,
    required this.title,
    required this.hint,
    required this.titleColor,
    required this.hintColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        color: backgroundColor,
        boxShadow: [
          BoxShadow(
            color: shadowColor,
            offset: Offset(0, 4.r),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Gap(10.w),
          Icon(
            icon,
            size: 35.r,
            color: iconColor,
          ),
          Gap(3.w),
          const VerticalDivider(
            thickness: 3.0,
            color: MyColors.myBackground,
          ),
          const Spacer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 13.sp,
                  fontWeight: FontWeight.bold,
                  color: titleColor,
                ),
              ),
              Text(
                hint,
                style: TextStyle(
                  fontSize: 13.sp,
                  fontWeight: FontWeight.bold,
                  color: hintColor,
                ),
              ),
            ],
          ),
          Gap(5.w),
        ],
      ),
    );
  }
}
