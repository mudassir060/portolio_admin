import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:image_picker/image_picker.dart';
import 'package:stacked/stacked.dart';

class AddProjectsViewModel extends BaseViewModel {
  File? image;
  final picker = ImagePicker();
  bool loading = false;
  TextEditingController titlectrl = TextEditingController();
  TextEditingController descCtrl = TextEditingController();
  TextEditingController datectrl = TextEditingController();
  TextEditingController linkctrl = TextEditingController();
  TextEditingController projectctrl = TextEditingController();
  TextEditingController youtubectrl = TextEditingController();
  TextEditingController gitctrl = TextEditingController();

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
