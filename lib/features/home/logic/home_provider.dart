import 'package:cashflow/features/home/data/repo/home_repo.dart';
import 'package:flutter/material.dart';

class HomeProvider with ChangeNotifier {
  final HomeRepo _repo = HomeRepo();

  int get onTap => _repo.onTap;

  bool get sCategory => _repo.sCategory;
  bool get bCategory => _repo.bCategory;
  bool get iCategory => _repo.iCategory;

  bool isPressed(int id) => _repo.isPressed(id);

  void updateOnTap() {
    _repo.updateOnTap();
    notifyListeners();
  }

  void pressed(int id) {
    _repo.pressed(id);
    notifyListeners();
  }

  void offPressed() {
    _repo.offPressed();
    notifyListeners();
  }

  /// فتح القسم التالي بعد التأكد أن كل الإجابات نعم
  void openNextCategory(
    String currentCategory,
    List<bool?> answers,
  ) {
    _repo.openNextCategory(currentCategory, answers);
    notifyListeners();
  }
}
