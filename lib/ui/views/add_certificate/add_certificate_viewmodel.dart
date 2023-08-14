import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:image_picker/image_picker.dart';
import 'package:stacked/stacked.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../app/app.locator.dart';
import '../../../services/add_certificate_service.dart';
import '../../../services/toastmessage_service.dart';

class ADDcertificateViewModel extends BaseViewModel {
    final addCertificateService = locator<AddCertificateService>();

  TextEditingController titlectrl = TextEditingController();
  TextEditingController descCtrl = TextEditingController();
  File? image;

  File? pdfFile;
  final picker = ImagePicker();
  final picker1 = FilePicker.platform;

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

  Future getPdfGallary() async {
    final pickedFile = await picker1.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf'],
    );

    if (pickedFile != null && pickedFile.files.isNotEmpty) {
      pdfFile = File(pickedFile.files.single.path!);
      print("=====>${pdfFile}");//upload wala ha kaha  
    } else {
      ToastmessageService().toastmessage("PDF file not picked");
    }
    notifyListeners();
  }
}
