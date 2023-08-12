import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:image_picker/image_picker.dart';
import 'package:stacked/stacked.dart';

class DescriptionViewModel extends BaseViewModel {
  final TextEditingController titlectrl = TextEditingController();
  final TextEditingController decctrl = TextEditingController();
  final TextEditingController aboutctrl = TextEditingController();

  File? image;
  final picker = ImagePicker();
  bool loading1 = false;
  String id = DateTime.now().millisecondsSinceEpoch.toString();


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

  final descriptionStream =
      FirebaseFirestore.instance.collection("Description").snapshots();

  // Future<void> uploadData(String id) async {
  //   setvalue(true);

  //   firebase_storage.Reference ref = firebase_storage.FirebaseStorage.instance
  //       .ref("/mypic/${DateTime.now().millisecondsSinceEpoch}");
  //   firebase_storage.UploadTask uploadTask = ref.putFile(image!.absolute);

  //   await Future.value(uploadTask).then((value) async {
  //     var newUrl = await ref.getDownloadURL();
  //     await fireStore.doc(id).set({
  //       "title": titlectrl.text.toString(),
  //       "decription": decctrl.text.toString(),
  //       "About": aboutctrl.text.toString(),
  //       "ID": id,
  //       "image": newUrl.toString()
  //     }).then((value) {
  //       ToastmessageService().toastmessage("Sucsessful data uploaded");
  //       setvalue(false);
  //     }).onError((error, stackTrace) {
  //       ToastmessageService().toastmessage(error.toString());
  //       setvalue(false);
  //     });
  //   });
  // }
}
