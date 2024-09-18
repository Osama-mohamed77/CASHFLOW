import 'package:flutter/material.dart';

class AnswerProvider with ChangeNotifier {
  String? _firstAnswer;
  String? _secondAnswer;
  String? _thirdAnswer;
  String? _category; // المتغير الجديد

  // Getters
  String? get firstAnswer => _firstAnswer;
  String? get secondAnswer => _secondAnswer;
  String? get thirdAnswer => _thirdAnswer;
  String? get category => _category; // Getter للـ category

  // Setters
  void setFirstAnswer(String? answer) {
    _firstAnswer = answer;
    _determineCategory(); // تحديد الفئة بناءً على الإجابات
    notifyListeners();
  }

  void setSecondAnswer(String? answer) {
    _secondAnswer = answer;
    _determineCategory(); // تحديد الفئة بناءً على الإجابات
    notifyListeners();
  }

  void setThirdAnswer(String? answer) {
    _thirdAnswer = answer;
    _determineCategory(); // تحديد الفئة بناءً على الإجابات
    notifyListeners();
  }

  // تحديد الفئة بناءً على الإجابات
  void _determineCategory() {
    if (_firstAnswer != null && _secondAnswer != null && _thirdAnswer != null) {
      // من وظيفة ثابتة وتحقق دخل ثابت وآمن وتحتاج للعمل
      if (_firstAnswer == '.من وظيفة أو راتب ثابت' &&
          _secondAnswer == '.تحقيق دخل ثابت وآمن' &&
          _thirdAnswer == '.نعم، أحتاج للعمل لكسب المال') {
        _category = 'E'; // موظف

        // من عملي الخاص وتريد الاستقلال المالي وتحتاج للعمل
      } else if (_firstAnswer == '.من عملي الخاص (مقدم خدمات أو استشاري)' &&
          _secondAnswer == '.الاستقلال المالي من خلال عملي الخاص' &&
          _thirdAnswer == '.نعم، أحتاج للعمل لكسب المال') {
        _category = 'S'; // مقدم خدمات أو استشاري

        // من شركتي وتريد بناء نظام وتملك نظامًا لا يعتمد على جهدك اليومي
      } else if (_firstAnswer == '.من شركتي أو نظام يعمل من أجلي' &&
          _secondAnswer == '.بناء نظام أو شركة تولد الدخل' &&
          _thirdAnswer == '.لا، أملك نظامًا أو استثمارات تعمل من أجلي') {
        _category = 'B'; // صاحب شركة

        // من استثماراتك وتريد زيادة الدخل السلبي ولا تعتمد على جهدك اليومي
      } else if (_firstAnswer == '.من استثماراتي (أسهم، عقارات، إلخ)' &&
          _secondAnswer == '.زيادة الدخل السلبي من الأصول والاستثمارات' &&
          _thirdAnswer == '.لا، أملك نظامًا أو استثمارات تعمل من أجلي') {
        _category = 'I'; // مستثمر
      }
    }
  }
}
