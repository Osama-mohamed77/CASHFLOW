import 'package:cashflow/constants/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppbarChartsScreen extends StatelessWidget {
  const AppbarChartsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: MyColors.myBackground,
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(20.r),
        ),
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(255, 39, 39, 39),
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: AppBar(
        automaticallyImplyLeading: false,
        title: Center(
          child: Text(
            'تتبع التدفق النقدي',
            style: TextStyle(color: Colors.white, fontSize: 22.sp),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
    );
  }
}
