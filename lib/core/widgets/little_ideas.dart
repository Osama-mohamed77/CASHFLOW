import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:cashflow/core/constants/my_colors.dart';
import 'package:cashflow/providers/home_provider.dart';
import 'package:cashflow/providers/page_index_provider.dart';
import 'package:popover/popover.dart';
import 'package:provider/provider.dart';

class LittleIdea extends StatelessWidget {
  final int id;
  final Color shadowColor;
  final Color backgroundColor;
  final Color iconColor;
  final Color circleColor;
  final Color textColor;
  final String text;

  const LittleIdea({
    super.key,
    required this.id,
    required this.shadowColor,
    required this.backgroundColor,
    required this.iconColor,
    required this.circleColor,
    required this.textColor,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(
      builder: (context, homeProvider, child) {
        return GestureDetector(
          onTapDown: (_) {
            homeProvider.pressed(id);
          },
          onTapUp: (_) {
            homeProvider.offPressed();
          },
          onTapCancel: () {
            homeProvider.offPressed();
          },
          onTap: () async {
            homeProvider.pressed(id);
            await Future.delayed(const Duration(
                milliseconds: 100)); // Short delay for visual feedback
            homeProvider.offPressed();

            showPopover(
              context: context,
              bodyBuilder: (context) => _IdeaPopover(
                textColor: textColor,
                iconColor: iconColor,
                text: text,
              ),
              radius: 20.r,
              width: 300.w,
              height: 130.h,
              backgroundColor: backgroundColor,
              direction: PopoverDirection.bottom,
              barrierColor: Colors.black.withOpacity(0.1),
            );
          },
          child: Stack(
            alignment: homeProvider.isPressed(id)
                ? Alignment(0, 0.2.r) // Centered when pressed
                : Alignment(0, -0.2.r), // Shifted up when not pressed
            children: [
              Container(
                width: 122.w,
                height: 122.h,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: MyColors.myEmptyCircle,
                    width: 10.0.r,
                  ),
                ),
              ),
              Container(
                width: 95.w,
                height: 85.h,
                decoration: BoxDecoration(
                  color: circleColor,
                  shape: BoxShape.circle,
                  boxShadow: homeProvider.isPressed(id)
                      ? [] // Remove shadow when pressed
                      : [
                          BoxShadow(
                            color: shadowColor,
                            offset: Offset(0, 8.r),
                          ),
                        ],
                ),
                child: Icon(
                  HugeIcons.strokeRoundedIdea01,
                  color: Colors.white,
                  size: 40.0.r,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class _IdeaPopover extends StatelessWidget {
  final Color iconColor;
  final Color textColor;
  final String text;

  const _IdeaPopover({
    required this.iconColor,
    required this.textColor,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            textAlign: TextAlign.right,
            text,
            style: TextStyle(
              fontSize: 15.sp,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            maxLines: 3,
          ),
          Gap(20.h),
          Consumer<PageIndexProvider>(
            builder: (context, pageIndexProvider, child) {
              return GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                  pageIndexProvider.changePage(2);
                },
                child: Container(
                  height: 30.h,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0xffBFBFBF),
                        offset: Offset(0, 4),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(5.r),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        HugeIcons.strokeRoundedIdea01,
                        size: 20.r,
                        color: iconColor,
                      ),
                      Gap(5.w),
                      Text(
                        'لمزيد من النصائح انتقل الي شاشة النصائح',
                        style: TextStyle(
                          fontSize: 13.sp,
                          fontWeight: FontWeight.bold,
                          color: textColor,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
