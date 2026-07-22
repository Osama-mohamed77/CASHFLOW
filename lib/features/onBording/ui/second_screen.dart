import 'package:cashflow/features/onBording/ui/widgets/second_screen_widgets/details_text_and_icons_second.dart';
import 'package:cashflow/features/onBording/ui/widgets/second_screen_widgets/title_text_second.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black.withValues(alpha: 0.0),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0.w),
        child: Column(
          children: [
            Gap(230.h),
            const TitleTextSecond(),
            Gap(30.h),
            const DetailsTextAndIconsSecond(),
          ],
        ),
      ),
    );
  }
}
