import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:image_picker/image_picker.dart';
import 'package:stacked/stacked.dart';

class DescriptionViewModel extends BaseViewModel {
  final titlectrl = TextEditingController();
  final decctrl = TextEditingController();
  final aboutctrl = TextEditingController();

  final fireStore = FirebaseFirestore.instance.collection("Description");
  bool loading1 = false;

  File? image;
  final picker = ImagePicker();

  void setvalue(bool loading) {
    loading1 = loading;
    notifyListeners();
  }

  Future getImageGallary() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      image = File(pickedFile.path);
    } else {
      print("file not picked");
    }
    notifyListeners();
  }
}
