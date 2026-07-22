import 'package:cashflow/constants/my_colors.dart';
import 'package:cashflow/features/charts_screen/ui/widgets/appbar_charts_screen.dart';
import 'package:cashflow/features/charts_screen/ui/widgets/bottom_chart.dart';
import 'package:cashflow/features/charts_screen/ui/widgets/top_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:cashflow/features/money_screen/logic/money_provider.dart';

class ChartsScreen extends StatelessWidget {
  const ChartsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.myBackground,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: AppbarChartsScreen(),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0.w),
            child: Column(
              children: [
                Consumer<MoneyProvider>(
                  builder: (context, value, child) {
                    return SizedBox(
                      height: 400.h,
                      child: TopChart(
                        income: value.moneyData.income,
                        expenses: value.moneyData.expenses,
                        debts: value.moneyData.debts,
                        assets: value.moneyData.assets,
                      ),
                    );
                  },
                ),
                SizedBox(
                  height: 20.h,
                ),
                Consumer<MoneyProvider>(
                  builder: (context, value, child) {
                    return SizedBox(
                      height: 400.h,
                      child: BottomChart(
                        investments: value.moneyData.investments,
                        savings: value.moneyData.savings,
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
