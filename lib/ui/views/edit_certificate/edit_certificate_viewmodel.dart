

import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:stacked/stacked.dart';

import '../../../app/app.locator.dart';
import '../../../services/add_certificate_service.dart';
import '../../../services/toastmessage_service.dart';

class EditCertificateViewModel extends BaseViewModel {
final certificateService = locator<AddCertificateService>();

TextEditingController titlectrl = TextEditingController();
  TextEditingController descCtrl = TextEditingController();
File? image;
  final picker = ImagePicker();
  bool loading1 = false;
  File? pdfFile;
 final fireStore = FirebaseFirestore.instance.collection("Certificate");

  final picker1 = FilePicker.platform;
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

  Future getPdfGallary() async {
    final pickedFile = await picker1.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf'],
    );

    if (pickedFile != null && pickedFile.files.isNotEmpty) {
      pdfFile = File(pickedFile.files.single.path!);
      print("=====>${pdfFile}");    //upload wala ha kaha
    } else {
      ToastmessageService().toastmessage("PDF file not picked");
    }
    notifyListeners();
  }

   void setvalue(bool loading) {
    loading1 = loading;
    notifyListeners();
  }

}
