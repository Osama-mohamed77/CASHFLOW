import 'package:cashflow/core/data/repos/answers_repo.dart';
import 'package:flutter/material.dart';

class AnswerProvider with ChangeNotifier {
  final AnswerRepo _repository;

  AnswerProvider(this._repository);

  String? get firstAnswer => _repository.firstAnswer;
  String? get secondAnswer => _repository.secondAnswer;
  String? get thirdAnswer => _repository.thirdAnswer;
  String? get category => _repository.category;

  // void setCategoryE() {
  //   _repository.setCategoryE();
  // }

  // void setCategoryS() {
  //   _repository.setCategoryS();
  // }

  // void setCategoryB() {
  //   _repository.setCategoryB();
  // }

  // void setCategoryI() {
  //   _repository.setCategoryI();
  // }

  void setFirstAnswer(String? answer) {
    _repository.setFirstAnswer(answer);
    notifyListeners();
  }

  void setSecondAnswer(String? answer) {
    _repository.setSecondAnswer(answer);
    notifyListeners();
  }

  void setThirdAnswer(String? answer) {
    _repository.setThirdAnswer(answer);
    notifyListeners();
  }
}
