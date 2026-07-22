import 'package:cashflow/features/home/data/model/home_model.dart';

class HomeRepo {
  final HomeModel _homeModel = HomeModel();

  int get onTap => _homeModel.onTap;
  int get pressedId => _homeModel.pressedId;

  bool get sCategory => _homeModel.sCategory;
  bool get bCategory => _homeModel.bCategory;
  bool get iCategory => _homeModel.iCategory;

  bool isPressed(int id) {
    return _homeModel.pressedId == id;
  }

  void updateOnTap() {
    _homeModel.onTap = 1;
  }

  void pressed(int id) {
    _homeModel.pressedId = id;
  }

  void offPressed() {
    _homeModel.pressedId = -1;
  }

  /// يفتح القسم التالي إذا كانت كل الإجابات نعم
  void openNextCategory(
    String currentCategory,
    List<bool?> answers,
  ) {
    // التأكد من أن كل الأسئلة تم الإجابة عليها
    if (answers.contains(null)) return;

    // التأكد أن كل الإجابات نعم
    if (!answers.every((e) => e == true)) return;

    switch (currentCategory) {
      case 'E':
        _homeModel.sCategory = true;
        break;

      case 'S':
        _homeModel.bCategory = true;
        break;

      case 'B':
        _homeModel.iCategory = true;
        break;
    }
  }
}
