import 'package:hive_flutter/adapters.dart';

@HiveType(typeId: 0) // تأكد من استخدام نوع ID فريد
class MoneyModel {
  @HiveField(0)
  double income;

  @HiveField(1)
  double expenses;

  @HiveField(2)
  double assets;

  @HiveField(3)
  double debts;

  @HiveField(4)
  double investments;

  @HiveField(5)
  double savings;

  @HiveField(6)
  bool canAddIncome;

  @HiveField(7)
  bool canAddExpenses;

  @HiveField(8)
  bool canAddAssets;

  @HiveField(9)
  bool canAddDebts;

  MoneyModel({
    required this.income,
    required this.expenses,
    required this.assets,
    required this.debts,
    required this.investments,
    required this.savings,
    required this.canAddIncome,
    required this.canAddExpenses,
    required this.canAddAssets,
    required this.canAddDebts,
  });
}
