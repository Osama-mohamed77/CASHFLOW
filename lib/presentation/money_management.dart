import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:cashflow/core/constants/my_colors.dart';
import 'package:cashflow/providers/money_provider.dart';
import 'package:provider/provider.dart';

class MoneyManagement extends StatelessWidget {
  const MoneyManagement({super.key});
  static String id = 'MoneyManagement';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.myBackground,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: Container(
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
                'إدارة المال',
                style: TextStyle(color: Colors.white, fontSize: 22.sp),
              ),
            ),
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
        ),
      ),
      body: Consumer<MoneyProvider>(
        builder: (context, provider, child) {
          return SingleChildScrollView(
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
                      physics:
                          const NeverScrollableScrollPhysics(), // Disable scroll
                      children: [
                        _buildCardSection(
                          context,
                          'الدخل',
                          provider.income,
                          Icons.monetization_on,
                          const Color(0xff44C958),
                          provider.canAddIncome,
                          () => _showAddDialog(
                            context,
                            'أدخل الدخل',
                            (value) => provider.updateIncome(value),
                            provider.resetIncome,
                          ),
                        ),
                        _buildCardSection(
                          context,
                          'المصروفات',
                          provider.expenses,
                          Icons.shopping_cart,
                          const Color(0xffC94447),
                          provider.canAddExpenses,
                          () => _showAddDialog(
                            context,
                            'أدخل المصروفات',
                            (value) => provider.updateExpenses(value),
                            provider.resetExpenses,
                          ),
                        ),
                        _buildCardSection(
                          context,
                          'العائد من الأصول',
                          provider.assets,
                          Icons.account_balance,
                          const Color(0xff44B3C9),
                          provider.canAddAssets,
                          () => _showAddDialog(
                            context,
                            'أدخل العائد من الأصول',
                            (value) => provider.updateAssets(value),
                            provider.resetAssets,
                          ),
                        ),
                        _buildCardSection(
                          context,
                          'الديون',
                          provider.debts,
                          Icons.credit_card,
                          const Color(0xffC99644),
                          provider.canAddDebts,
                          () => _showAddDialog(
                            context,
                            'أدخل الديون',
                            (value) => provider.updateDebts(value),
                            provider.resetDebts,
                          ),
                        ),
                      ],
                    ),
                  ),
                  _buildNetCalculationSection(provider),
                  _buildExpensePlanSection(provider),
                  Gap(100.h)
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildCardSection(
    BuildContext context,
    String title,
    double value,
    IconData icon,
    Color color,
    bool canAdd,
    VoidCallback onAdd,
  ) {
    return Card(
      color: const Color(0xFF444444),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.r)),
      elevation: 0,
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFF444444),
          borderRadius: BorderRadius.circular(15.r),
          boxShadow: const [
            BoxShadow(
              color: Color(0xFF3C3A3A),
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ListTile(
              leading: Icon(
                icon,
                color: color,
                size: 30.r,
              ),
              title: Text(title,
                  textAlign: TextAlign.right,
                  style: TextStyle(color: Colors.white, fontSize: 19.sp)),
              subtitle: Text(
                textAlign: TextAlign.right,
                value.toStringAsFixed(2),
                style: TextStyle(color: Colors.white70, fontSize: 17.sp),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  icon: Icon(Icons.add_circle,
                      color: canAdd ? Colors.white : Colors.grey),
                  onPressed: canAdd ? onAdd : null,
                ),
                IconButton(
                  icon: const Icon(Icons.edit, color: Colors.white),
                  onPressed: () {
                    if (!canAdd) {
                      _showEditDialog(
                        context,
                        title,
                        value,
                        (newValue) {
                          if (title == 'الدخل') {
                            context
                                .read<MoneyProvider>()
                                .updateIncome(newValue);
                          } else if (title == 'المصروفات') {
                            context
                                .read<MoneyProvider>()
                                .updateExpenses(newValue);
                          } else if (title == 'العائد من الأصول') {
                            context
                                .read<MoneyProvider>()
                                .updateAssets(newValue);
                          } else if (title == 'الديون') {
                            context.read<MoneyProvider>().updateDebts(newValue);
                          }
                        },
                        () {
                          if (title == 'الدخل') {
                            context.read<MoneyProvider>().resetIncome();
                          } else if (title == 'المصروفات') {
                            context.read<MoneyProvider>().resetExpenses();
                          } else if (title == 'العائد من الأصول') {
                            context.read<MoneyProvider>().resetAssets();
                          } else if (title == 'الديون') {
                            context.read<MoneyProvider>().resetDebts();
                          }
                        },
                      );
                    }
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _showAddDialog(
    BuildContext context,
    String title,
    void Function(double) updateValue,
    VoidCallback resetAddState,
  ) {
    final TextEditingController controller = TextEditingController();
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(title),
          content: TextField(
            controller: controller,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              hintText: '0',
            ),
            inputFormatters: [
              FilteringTextInputFormatter.digitsOnly,
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                resetAddState();
                Navigator.of(context).pop();
              },
              child: const Text('إلغاء'),
            ),
            TextButton(
              onPressed: () {
                final value = double.tryParse(controller.text) ?? 0;
                updateValue(value);
                Navigator.of(context).pop();
              },
              child: const Text('تأكيد'),
            ),
          ],
        );
      },
    );
  }

  void _showEditDialog(
    BuildContext context,
    String title,
    double currentValue,
    void Function(double) updateValue,
    VoidCallback resetAddState,
  ) {
    final TextEditingController controller =
        TextEditingController(text: currentValue.toStringAsFixed(2));
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('تعديل $title'),
          content: TextField(
            controller: controller,
            keyboardType: const TextInputType.numberWithOptions(decimal: true),
            decoration: const InputDecoration(
              hintText: '0.00',
            ),
            inputFormatters: [
              // Only allows digits and one decimal separator
              FilteringTextInputFormatter.allow(RegExp(r'^\d*\.?\d*$')),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('إلغاء'),
            ),
            TextButton(
              onPressed: () {
                final value = double.tryParse(controller.text) ?? 0;
                updateValue(value);
                Navigator.of(context).pop();
              },
              child: const Text('تأكيد'),
            ),
          ],
        );
      },
    );
  }

  Widget _buildNetCalculationSection(MoneyProvider provider) {
    double net = provider.calculateNet();
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

  Widget _buildExpensePlanSection(MoneyProvider provider) {
    final expensePlan = provider.calculateExpensePlan();
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
