import 'package:cashflow/core/data/models/answers_model.dart';

class AnswerRepo {
  final AnswerModel _model;
  AnswerRepo(this._model);

  String? get firstAnswer => _model.firstAnswer;
  String? get secondAnswer => _model.secondAnswer;
  String? get thirdAnswer => _model.thirdAnswer;
  String? get category => _model.category;

  void setFirstAnswer(String? answer) {
    _model.firstAnswer = answer;
    determineCategory();
  }

  void setCategoryE() {
    _model.category = 'E';
  }

  void setCategoryS() {
    _model.category = 'S';
  }

  void setCategoryB() {
    _model.category = 'B';
  }

  void setCategoryI() {
    _model.category = 'I';
  }

  void setSecondAnswer(String? answer) {
    _model.secondAnswer = answer;
    determineCategory();
  }

  void setThirdAnswer(String? answer) {
    _model.thirdAnswer = answer;
    determineCategory();
  }

  void determineCategory() {
    if (_model.firstAnswer != null &&
        _model.secondAnswer != null &&
        _model.thirdAnswer != null) {
      if (_model.firstAnswer == '.من وظيفة أو راتب ثابت' &&
          _model.thirdAnswer == '.نعم، أحتاج للعمل لكسب المال') {
        setCategoryE(); // Employee
      } else if (_model.firstAnswer ==
              '.من عملي الخاص (مقدم خدمات أو استشاري)' &&
          _model.thirdAnswer == '.نعم، أحتاج للعمل لكسب المال') {
        setCategoryS(); // Self-employed
      } else if (_model.firstAnswer == '.من شركتي أو نظام يعمل من أجلي' &&
          _model.thirdAnswer == '.لا، أملك نظامًا أو استثمارات تعمل من أجلي') {
        setCategoryB(); // Business owner
      } else if (_model.firstAnswer == '.من استثماراتي (أسهم، عقارات، إلخ)' &&
          _model.thirdAnswer == '.لا، أملك نظامًا أو استثمارات تعمل من أجلي') {
        setCategoryI(); // Investor
      } else {
        setCategoryE();
      }
    }
  }
}
