import 'package:stacked/stacked.dart';

class NoticeSheetModel extends BaseViewModel {
  double sliderValue = 0.0;

  void slidervalue(value) {
    sliderValue = value;
    notifyListeners();
  }
}
