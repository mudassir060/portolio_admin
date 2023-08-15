import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';

class EditskillViewModel extends BaseViewModel {
  final skillctrl = TextEditingController();
  double slideValue = 0;
  final fireStore = FirebaseFirestore.instance.collection("Skills");
  CollectionReference ref = FirebaseFirestore.instance.collection("Skills");
  bool loading1 = false;

  void setvalue(bool loading) {
    loading1 = loading;
    notifyListeners();
  }

  void updatedslidervalue(double value) {
    slideValue = value;
    notifyListeners();
  }
}
