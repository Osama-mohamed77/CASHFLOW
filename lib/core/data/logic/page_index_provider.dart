import 'package:cashflow/core/data/repos/page_index_repo.dart';
import 'package:flutter/foundation.dart';

class PageIndexProvider with ChangeNotifier {
  final PageIndexRepo _repo = PageIndexRepo();

  int get currentIndex => _repo.currentIndex;
  int get currentPageIndex => _repo.currentPageIndex;

  void setOnBoardingIndex(int index) {
    _repo.setOnBoardingIndex(index);
    notifyListeners();
  }

  void changePage(int index) {
    _repo.changePage(index);
    notifyListeners();
  }

  void setPageIndex() {
    _repo.setPageIndex();
    notifyListeners();
  }
}
