import 'package:flutter/foundation.dart';

class PageIndexProvider with ChangeNotifier {
  int _currentPageIndex = 0;
  int _currentIndex = 3;

  int get currentIndex => _currentIndex;

  int get currentPageIndex => _currentPageIndex;

  void setOnBoardingIndex(int index) {
    _currentPageIndex = index;
    notifyListeners();
  }

  void changePage(int index) {
    _currentIndex = index;
    notifyListeners();
  }

  void setPageIndex() {
    _currentIndex = 2;
    notifyListeners();
  }
}
