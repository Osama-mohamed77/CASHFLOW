import 'package:cashflow/core/data/models/page_index_model.dart';

class PageIndexRepo {
  PageIndexModel _pageIndexModel = PageIndexModel();

  PageIndexRepo() {
    _pageIndexModel = PageIndexModel();
  }

  int get currentIndex => _pageIndexModel.currentIndex;
  int get currentPageIndex => _pageIndexModel.currentPageIndex;

  void setOnBoardingIndex(int index) {
    _pageIndexModel.currentPageIndex = index;
  }

  void changePage(int index) {
    _pageIndexModel.currentIndex = index;
  }

  void setPageIndex() {
    _pageIndexModel.currentIndex = 2;
  }
}
