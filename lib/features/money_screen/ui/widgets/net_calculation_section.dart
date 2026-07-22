import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NetCalculationSection extends StatelessWidget {
  final double net;

  const NetCalculationSection({
    required this.net,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(bottom: 10.h),
      child: Card(
        color: const Color(0xFF444444),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.r)),
        elevation: 0,
        child: Container(
          decoration: BoxDecoration(
            color: const Color(0xFF444444),
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: const Color(0xFF3C3A3A),
                offset: Offset(0, 4.r),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'حسبة الصافي',
                  style: TextStyle(color: Colors.white, fontSize: 19.sp),
                ),
                SizedBox(height: 10.h),
                Text(
                  net < 0 ? 'القيمة سالبة' : net.toStringAsFixed(2),
                  style: TextStyle(color: Colors.white70, fontSize: 23.sp),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
