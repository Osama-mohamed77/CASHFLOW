import 'package:cashflow/features/onBording/ui/widgets/third_screen_widgets/first_ques.dart';
import 'package:cashflow/features/onBording/ui/widgets/third_screen_widgets/second_ques.dart';
import 'package:cashflow/features/onBording/ui/widgets/third_screen_widgets/third_ques.dart';
import 'package:cashflow/features/onBording/ui/widgets/third_screen_widgets/title_and_hint_text_third.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({super.key});
  @override
  ThirdScreenState createState() => ThirdScreenState();
}

class ThirdScreenState extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black.withValues(alpha: 0.0),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: Column(
          children: [
            Gap(200.h),
            const TitleAndHintTextThird(),
            Gap(20.h),
            const FirstQues(),
            Gap(15.h),
            const SecondQues(),
            Gap(10.h),
            const ThirdQues(),
          ],
        ),
      ),
    );
  }
}
