import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';

import '../../../app/app.locator.dart';
import '../../../services/contact_service.dart';

class ContactViewModel extends BaseViewModel {
  TextEditingController emailctrl = TextEditingController();
  TextEditingController facebookCtrl = TextEditingController();
  TextEditingController linkdinctrl = TextEditingController();
  TextEditingController githubctrl = TextEditingController();
  TextEditingController contactctrl = TextEditingController();

 final contactService = locator<ContactService>();
  bool loading1 = false;

  final fireStore = FirebaseFirestore.instance.collection("Contact");

  void setvalue(bool loading) {
    loading1 = loading;
    notifyListeners();
  }

  final contactstream =
      FirebaseFirestore.instance.collection("Contact").snapshots();
}
