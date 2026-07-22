import 'package:cashflow/core/data/logic/page_index_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:provider/provider.dart';

class IdeaPopover extends StatelessWidget {
  final Color iconColor;
  final Color textColor;
  final String text;

  const IdeaPopover({super.key, 
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
