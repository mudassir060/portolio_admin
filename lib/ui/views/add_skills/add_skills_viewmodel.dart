import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';

import '../../../app/app.locator.dart';
import '../../../services/skill_page_service.dart';

class AddSkillsViewModel extends BaseViewModel {
  final skillctrl = TextEditingController();
  double slideValue = 0;
  final fireStore = FirebaseFirestore.instance.collection("Skills");
 final skillService = locator<SkillPageService>();
  bool loading1 = false;

  void setvalue(bool loading) {
    loading1 = loading;
    notifyListeners();
  }

  void slidervalue(value) {
    slideValue = value;
    notifyListeners();
  }
}
