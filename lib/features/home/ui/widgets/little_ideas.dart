import 'package:cashflow/features/home/ui/widgets/Idea_popover.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:cashflow/constants/my_colors.dart';
import 'package:cashflow/features/home/logic/home_provider.dart';
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
    // MoneyProvider provider = Provider.of<MoneyProvider>(listen: false, context);
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
            // provider.clearAllData;
            homeProvider.pressed(id);
            await Future.delayed(
              const Duration(milliseconds: 100),
            );
            homeProvider.offPressed();

            showPopover(
              context: context,
              bodyBuilder: (context) => IdeaPopover(
                textColor: textColor,
                iconColor: iconColor,
                text: text,
              ),
              radius: 20.r,
              width: 300.w,
              height: 130.h,
              backgroundColor: backgroundColor,
              direction: PopoverDirection.bottom,
              barrierColor: Colors.black.withValues(alpha: 0.1),
            );
          },
          child: Stack(
            alignment: homeProvider.isPressed(id)
                ? Alignment(0, 0.2.r)
                : Alignment(0, -0.2.r),
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
                      ? []
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
