import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ExpensePlanSection extends StatelessWidget {
  final Map<String, double> expensePlan;

  const ExpensePlanSection({
    required this.expensePlan,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 40.0.h),
      child: SizedBox(
        width: double.infinity,
        child: Card(
          color: const Color(0xFF444444),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.r)),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'خطة الصرف',
                  style: TextStyle(color: Colors.white, fontSize: 19.sp),
                ),
                SizedBox(height: 10.h),
                _buildExpensePlanRow(
                    'الادخار', expensePlan['savings']!.toStringAsFixed(2)),
                _buildExpensePlanRow(
                    'الاستثمار', expensePlan['investment']!.toStringAsFixed(2)),
                _buildExpensePlanRow('الاحتياجات اليومية',
                    expensePlan['dailyNeeds']!.toStringAsFixed(2)),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildExpensePlanRow(String title, String amount) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: TextStyle(color: Colors.white, fontSize: 16.sp)),
        Text(amount, style: TextStyle(color: Colors.white70, fontSize: 16.sp)),
      ],
    );
  }
}
