import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'widgets/first_screen_widgets/details_text_and_icons_first.dart';
import 'widgets/first_screen_widgets/logo_image_and_app_name_first.dart';
import 'widgets/first_screen_widgets/title_and_hint_text_first.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black.withValues(alpha: 0.0),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0.w),
        child: Column(
          children: [
            Gap(100.h),
            const LogoImageAndAppNameFirst(),
            Gap(40.h),
            const TitleAndHintTextFirst(),
            Gap(20.h),
            const DetailsTextAndIconsFirst(),
          ],
        ),
      ),
    );
  }
}
