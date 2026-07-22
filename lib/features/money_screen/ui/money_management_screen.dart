import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:cashflow/constants/my_colors.dart';
import 'package:cashflow/features/money_screen/ui/widgets/appbar_money_management.dart';
import 'package:cashflow/features/money_screen/ui/widgets/card_section.dart';
import 'package:cashflow/features/money_screen/ui/widgets/net_calculation_section.dart';
import 'package:cashflow/features/money_screen/ui/widgets/expense_plan_section.dart';
import 'package:cashflow/features/money_screen/logic/money_provider.dart';
import 'package:cashflow/features/money_screen/ui/widgets/dialogs.dart'; // Import the dialogs

class MoneyManagement extends StatelessWidget {
  const MoneyManagement({super.key});
  static String id = 'MoneyManagement';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.myBackground,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: AppbarMoneyManagement(),
      ),
      body: Consumer<MoneyProvider>(
        builder: (context, provider, child) {
          return SingleChildScrollView(
            child: SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0.w),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 10.h),
                      height: 405.h,
                      child: GridView.count(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10.r,
                        mainAxisSpacing: 10.r,
                        physics: const NeverScrollableScrollPhysics(),
                        children: [
                          CardSection(
                            title: 'الدخل',
                            value: provider.moneyData.income,
                            icon: Icons.monetization_on,
                            color: const Color(0xff44C958),
                            canAdd: provider.moneyData.canAddIncome,
                            onAdd: () => showAddDialog(
                              context,
                              'أدخل الدخل',
                              (value) => provider.updateIncome(value),
                              provider.resetIncome,
                            ),
                            onEdit: () => showEditDialog(
                              context,
                              'الدخل',
                              provider.moneyData.income,
                              (newValue) => provider.updateIncome(newValue),
                              provider.resetIncome,
                            ),
                          ),
                          CardSection(
                            title: 'المصروفات',
                            value: provider.moneyData.expenses,
                            icon: Icons.shopping_cart,
                            color: const Color(0xffC94447),
                            canAdd: provider.moneyData.canAddExpenses,
                            onAdd: () => showAddDialog(
                              context,
                              'أدخل المصروفات',
                              (value) => provider.updateExpenses(value),
                              provider.resetExpenses,
                            ),
                            onEdit: () => showEditDialog(
                              context,
                              'المصروفات',
                              provider.moneyData.expenses,
                              (newValue) => provider.updateExpenses(newValue),
                              provider.resetExpenses,
                            ),
                          ),
                          CardSection(
                            title: 'العائد من الأصول',
                            value: provider.moneyData.assets,
                            icon: Icons.account_balance,
                            color: const Color(0xff44B3C9),
                            canAdd: provider.moneyData.canAddAssets,
                            onAdd: () => showAddDialog(
                              context,
                              'أدخل العائد من الأصول',
                              (value) => provider.updateAssets(value),
                              provider.resetAssets,
                            ),
                            onEdit: () => showEditDialog(
                              context,
                              'العائد من الأصول',
                              provider.moneyData.assets,
                              (newValue) => provider.updateAssets(newValue),
                              provider.resetAssets,
                            ),
                          ),
                          CardSection(
                            title: 'الديون',
                            value: provider.moneyData.debts,
                            icon: Icons.credit_card,
                            color: const Color(0xffC99644),
                            canAdd: provider.moneyData.canAddDebts,
                            onAdd: () => showAddDialog(
                              context,
                              'أدخل الديون',
                              (value) => provider.updateDebts(value),
                              provider.resetDebts,
                            ),
                            onEdit: () => showEditDialog(
                              context,
                              'الديون',
                              provider.moneyData.debts,
                              (newValue) => provider.updateDebts(newValue),
                              provider.resetDebts,
                            ),
                          ),
                        ],
                      ),
                    ),
                    NetCalculationSection(
                      net: provider.calculateNet(),
                    ),
                    ExpensePlanSection(
                      expensePlan: provider.calculateExpensePlan(),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
