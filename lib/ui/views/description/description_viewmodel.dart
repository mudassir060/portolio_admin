import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:image_picker/image_picker.dart';
import 'package:stacked/stacked.dart';

class DescriptionViewModel extends BaseViewModel {
  final titlectrl = TextEditingController();

  File? image;
  final picker = ImagePicker();
  bool loading = false;

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
