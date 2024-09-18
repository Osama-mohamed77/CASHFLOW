import 'package:flutter/material.dart';

class MoneyProvider with ChangeNotifier {
  double _income = 0;
  double _expenses = 0;
  double _assets = 0;
  double _debts = 0;

  bool _canAddIncome = true;
  bool _canAddExpenses = true;
  bool _canAddAssets = true;
  bool _canAddDebts = true;

  double get income => _income;
  double get expenses => _expenses;
  double get assets => _assets;
  double get debts => _debts;

  bool get canAddIncome => _canAddIncome;
  bool get canAddExpenses => _canAddExpenses;
  bool get canAddAssets => _canAddAssets;
  bool get canAddDebts => _canAddDebts;

  void updateIncome(double newIncome) {
    _income = newIncome;
    _canAddIncome = false;
    notifyListeners();
  }

  void updateExpenses(double newExpenses) {
    _expenses = newExpenses;
    _canAddExpenses = false;
    notifyListeners();
  }

  void updateAssets(double newAssets) {
    _assets = newAssets;
    _canAddAssets = false;
    notifyListeners();
  }

  void updateDebts(double newDebts) {
    _debts = newDebts;
    _canAddDebts = false;
    notifyListeners();
  }

  void resetIncome() {
    _canAddIncome = true;
    notifyListeners();
  }

  void resetExpenses() {
    _canAddExpenses = true;
    notifyListeners();
  }

  void resetAssets() {
    _canAddAssets = true;
    notifyListeners();
  }

  void resetDebts() {
    _canAddDebts = true;
    notifyListeners();
  }

  double calculateNet() {
    return _income + _assets - _expenses - _debts;
  }

  String getNetDisplayValue() {
    double net = calculateNet();
    return net < 0 ? 'القيمة سالبة' : net.toStringAsFixed(2);
  }

  Map<String, double> calculateExpensePlan() {
    double net = _income + _assets - _expenses - _debts;
    return {
      "savings": net < 0 ? 0 : net / 3,
      "investment": net < 0 ? 0 : net / 3,
      "dailyNeeds": net < 0 ? 0 : net / 3,
    };
  }
}
