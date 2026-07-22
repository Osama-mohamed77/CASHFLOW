import 'package:cashflow/features/money_screen/data/model/money_model.dart';
import 'package:cashflow/features/money_screen/data/repo/money_repo.dart';
import 'package:flutter/material.dart';

class MoneyProvider with ChangeNotifier {
  final MoneyRepo _moneyRepository = MoneyRepo();

  MoneyModel get moneyData => _moneyRepository.getMoneyData();

  void updateInvestments(double newInvestments) {
    _moneyRepository.updateInvestments(newInvestments);
    notifyListeners();
  }

  void updateSavings(double newSavings) {
    _moneyRepository.updateSavings(newSavings);
    notifyListeners();
  }

  void clearAllData() {
    _moneyRepository.clearAllData();
  }

  void updateIncome(double newIncome) {
    _moneyRepository.updateIncome(newIncome);
    notifyListeners();
  }

  void updateExpenses(double newExpenses) {
    _moneyRepository.updateExpenses(newExpenses);
    notifyListeners();
  }

  void updateAssets(double newAssets) {
    _moneyRepository.updateAssets(newAssets);
    notifyListeners();
  }

  void updateDebts(double newDebts) {
    _moneyRepository.updateDebts(newDebts);
    notifyListeners();
  }

  void resetIncome() {
    _moneyRepository.resetIncome();
    notifyListeners();
  }

  void resetExpenses() {
    _moneyRepository.resetExpenses();
    notifyListeners();
  }

  void resetAssets() {
    _moneyRepository.resetAssets();
    notifyListeners();
  }

  void resetDebts() {
    _moneyRepository.resetDebts();
    notifyListeners();
  }

  double calculateNet() {
    return _moneyRepository.calculateNet();
  }

  String getNetDisplayValue() {
    double net = calculateNet();
    return net < 0 ? 'القيمة سالبة' : net.toStringAsFixed(2);
  }

  Map<String, double> calculateExpensePlan() {
    return _moneyRepository.calculateExpensePlan();
  }

  Future<void> loadMoneyData() async {
    // هذا سيساعد على تحميل البيانات عند بدء التطبيق
    await _moneyRepository.loadInitialData();
    notifyListeners();
  }
}
