import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:image_picker/image_picker.dart';
import 'package:stacked/stacked.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;

class EditprojectViewModel extends BaseViewModel {
  File? image;
  final picker = ImagePicker();
  bool loading1 = false;
  TextEditingController titlectrl = TextEditingController();
  TextEditingController descCtrl = TextEditingController();
  TextEditingController datectrl = TextEditingController();
  TextEditingController linkctrl = TextEditingController();
  TextEditingController youtubectrl = TextEditingController();
  TextEditingController gitctrl = TextEditingController();
  CollectionReference cref = FirebaseFirestore.instance.collection("Projects");

  String? imageUrl;
  // Store the imageUrl here
  Future getImageGallary() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      image = File(pickedFile.path);
    } else {
      print("file not picked");
    }
    notifyListeners();
  }

  // ... other methods ...

  Future uploadImageAndSaveUrl(id) async {
    if (image != null) {
      firebase_storage.Reference ref = firebase_storage.FirebaseStorage.instance
          .ref("/mypic/${DateTime.now().millisecondsSinceEpoch}");
      firebase_storage.UploadTask uploadTask = ref.putFile(image!.absolute);

      try {
        await uploadTask.whenComplete(() async {
          // Do something after the image is uploaded
          imageUrl = await ref.getDownloadURL();

          // Update the image URL in Firestore
          await cref.doc(id).update({"image": imageUrl});

          notifyListeners(); // Notify listeners of the imageUrl change
        });
      } catch (error) {
        print("Error uploading image: $error");
      }
    } else {
      print("No image selected.");
    }
  }

  void setvalue(bool loading) {
    loading1 = loading;
    notifyListeners();
  }
}
