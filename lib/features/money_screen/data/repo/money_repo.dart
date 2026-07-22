import 'package:cashflow/features/money_screen/data/model/money_model.dart';
import 'package:hive_flutter/adapters.dart';

class MoneyRepo {
  final Box<MoneyModel> _moneyBox = Hive.box<MoneyModel>('moneyBox');

  MoneyRepo() {
    loadInitialData(); // استدعاء دالة التحميل في المُنشئ
  }

  Future<void> loadInitialData() async {
    if (_moneyBox.isEmpty) {
      await _moneyBox.put(
        'moneyData',
        MoneyModel(
          income: 0,
          expenses: 0,
          assets: 0,
          debts: 0,
          investments: 0,
          savings: 0,
          canAddIncome: true,
          canAddExpenses: true,
          canAddAssets: true,
          canAddDebts: true,
        ),
      );
    }
  }



  MoneyModel getMoneyData() {
    return _moneyBox.get('moneyData')!;
  }

  void clearAllData() {
    _moneyBox.clear();
  }

  void saveMoneyData(MoneyModel moneyData) {
    _moneyBox.put('moneyData', moneyData);
  }

  void updateInvestments(double newInvestments) {
    MoneyModel moneyData = getMoneyData();
    moneyData.investments = newInvestments;
    saveMoneyData(moneyData);
  }

  void updateSavings(double newSavings) {
    MoneyModel moneyData = getMoneyData();
    moneyData.savings = newSavings;
    saveMoneyData(moneyData);
  }

  void updateIncome(double newIncome) {
    MoneyModel moneyData = getMoneyData();
    moneyData.income = newIncome;
    moneyData.canAddIncome = false;
    saveMoneyData(moneyData);
  }

  void updateExpenses(double newExpenses) {
    MoneyModel moneyData = getMoneyData();
    moneyData.expenses = newExpenses;
    moneyData.canAddExpenses = false;
    saveMoneyData(moneyData);
  }

  void updateAssets(double newAssets) {
    MoneyModel moneyData = getMoneyData();
    moneyData.assets = newAssets;
    moneyData.canAddAssets = false;
    saveMoneyData(moneyData);
  }

  void updateDebts(double newDebts) {
    MoneyModel moneyData = getMoneyData();
    moneyData.debts = newDebts;
    moneyData.canAddDebts = false;
    saveMoneyData(moneyData);
  }

  void resetIncome() {
    MoneyModel moneyData = getMoneyData();
    moneyData.canAddIncome = true;
    saveMoneyData(moneyData);
  }

  void resetExpenses() {
    MoneyModel moneyData = getMoneyData();
    moneyData.canAddExpenses = true;
    saveMoneyData(moneyData);
  }

  void resetAssets() {
    MoneyModel moneyData = getMoneyData();
    moneyData.canAddAssets = true;
    saveMoneyData(moneyData);
  }

  void resetDebts() {
    MoneyModel moneyData = getMoneyData();
    moneyData.canAddDebts = true;
    saveMoneyData(moneyData);
  }

  double calculateNet() {
    MoneyModel moneyData = getMoneyData();
    return moneyData.income +
        moneyData.assets -
        moneyData.expenses -
        moneyData.debts;
  }

  Map<String, double> calculateExpensePlan() {
    double net = calculateNet();
    double savingsValue = net < 0 ? 0 : net / 3;
    double investmentValue = net < 0 ? 0 : net / 3;

    MoneyModel moneyData = getMoneyData();
    moneyData.savings = savingsValue;
    moneyData.investments = investmentValue;

    saveMoneyData(moneyData);

    return {
      "savings": savingsValue,
      "investment": investmentValue,
      "dailyNeeds": net < 0 ? 0 : net / 3,
    };
  }
}
