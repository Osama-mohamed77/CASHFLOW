import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:cashflow/core/constants/my_colors.dart';
import 'package:cashflow/presentation/onBording/first_screen.dart';
import 'package:cashflow/presentation/onBording/second_screen.dart';
import 'package:cashflow/presentation/onBording/third_screen.dart';
import 'package:cashflow/core/widgets/error_message.dart';
import 'package:cashflow/core/widgets/nav_bar.dart';
import 'package:cashflow/providers/answer_provider.dart';
import 'package:cashflow/providers/page_index_provider.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ExplainScreens extends StatelessWidget {
  const ExplainScreens({super.key});
  static final PageController _controller = PageController();
  static int pagenum = 0;

  Widget scrollingCircles() {
    return SmoothPageIndicator(
      controller: _controller,
      count: 3,
      effect: CustomizableEffect(
        activeDotDecoration: DotDecoration(
          width: 30.0.sp,
          height: 8.0.sp,
          color: Colors.black,
          borderRadius: BorderRadius.circular(4.0.sp),
        ),
        dotDecoration: DotDecoration(
          width: 12.0.sp,
          height: 7.0.sp,
          color: Colors.black,
          borderRadius: BorderRadius.circular(4.0.sp),
        ),
        spacing: 6.0.sp,
      ),
    );
  }

  Widget elevatedButton(BuildContext context) {
    return Consumer<AnswerProvider>(
      builder: (context, answerProvider, child) {
        return Consumer<PageIndexProvider>(
          builder: (context, pageIndexProvider, child) {
            return GestureDetector(
              onTap: () {
                if (pageIndexProvider.currentPageIndex == 0) {
                  // الانتقال إلى الصفحة الثانية
                  _controller.animateToPage(
                    1,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                  pageIndexProvider.setOnBoardingIndex(1);
                } else if (pageIndexProvider.currentPageIndex == 1) {
                  // الانتقال إلى الصفحة الثالثة
                  _controller.animateToPage(
                    2,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                  pageIndexProvider.setOnBoardingIndex(2);
                } else if (pageIndexProvider.currentPageIndex == 2) {
                  // الانتقال إلى الصفحة الرئيسية
                  if (answerProvider.firstAnswer == null ||
                      answerProvider.secondAnswer == null ||
                      answerProvider.thirdAnswer == null) {
                    showMessage(context,
                        title: '!متستعجلش',
                        desText: 'اجب علي جميع الاسئله للاستمرار',
                        icon: Icons.info,
                        iconColor: MyColors.myOrange,
                        backgroundColor: MyColors.myGrey,
                        textColor: Colors.black,
                        alignment: const Alignment(0, -1),
                        titelColor: Colors.black);
                  } else {
                    Navigator.pushNamed(context, NavBar.id);
                  }
                }
              },
              child: Container(
                height: 60.h,
                width: 130.w,
                decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                  ),
                ),
                child: Row(
                  children: [
                    Gap(10.w),
                    Text(
                      'استمرار',
                      style: TextStyle(
                        fontSize: 20.0.sp,
                        color: Colors.white,
                        fontFamily: 'inter',
                      ),
                    ),
                    const Spacer(),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 15.r,
                      color: Colors.white,
                    ),
                    Gap(10.w)
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }

  Widget backgroundImage() {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: Image.asset(
        'assets/images/background.png',
        fit: BoxFit.cover,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // الخلفية الثابتة
          backgroundImage(),

          // الشاشات المتحركة
          PageView(
            scrollBehavior: const ScrollBehavior(),
            controller: _controller,
            onPageChanged: (index) {
              context.read<PageIndexProvider>().setOnBoardingIndex(index);
            },
            children: const [
              FirstScreen(),
              SecondScreen(),
              ThirdScreen(),
            ],
          ),

          // العناصر السفلية مثل الدوائر وزر الاستمرار
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Gap(10.w),
                  scrollingCircles(),
                  const Spacer(flex: 2),
                  elevatedButton(context),
                ],
              ),
              Gap(95.h)
            ],
          ),
        ],
      ),
    );
  }
}
