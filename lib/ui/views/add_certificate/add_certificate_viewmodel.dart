import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:image_picker/image_picker.dart';
import 'package:stacked/stacked.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ADDcertificateViewModel extends BaseViewModel {
  TextEditingController titlectrl = TextEditingController();
  TextEditingController descCtrl = TextEditingController();
  File? image;
  final picker = ImagePicker();
  bool loading1 = false;
  final fireStore = FirebaseFirestore.instance.collection("Certificate");

  void setvalue(bool loading) {
    loading1 = loading;
    notifyListeners();
  }

  Future getImageGallary() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    {
      if (pickedFile != null) {
        image = File(pickedFile.path);
      } else {
        print("file not picked");
      }
      notifyListeners();
    }
  }
}
