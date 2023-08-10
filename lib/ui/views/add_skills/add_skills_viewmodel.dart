import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';

class AddSkillsViewModel extends BaseViewModel {
   final skillctrl = TextEditingController();
  double slideValue = 0;
  final fireStore = FirebaseFirestore.instance.collection("Skills");
  bool loading = false;

  void setvalue(bool loading) {
    loading = loading;
    notifyListeners();
  }

  void slidervalue(value) {
    slideValue = value;
    notifyListeners();
  }
}
