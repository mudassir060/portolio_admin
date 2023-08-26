import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:portolio_admin/services/toastmessage_service.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;

// class ProjectService {
//   Future<void> uploadProject(
//     viewModel,
//     String ?id,
//     titlectrl,
//     descCtrl,
//     datectrl,
//     linkctrl,
//     gitctrl,
//     youtubectrl,
//   ) async {
//     viewModel.setvalue(true);

//     firebase_storage.Reference ref = firebase_storage.FirebaseStorage.instance
//         .ref("/mypic/${DateTime.now().millisecondsSinceEpoch}");
//     firebase_storage.UploadTask uploadTask =
//         ref.putFile(viewModel.image!.absolute);

//     await Future.value(uploadTask).then((value) async {
//       var newUrl = await ref.getDownloadURL();
//       String id =
//                         DateTime.now().millisecondsSinceEpoch.toString();
//       await viewModel.fireStore.doc(id).set({
//         "title": titlectrl.text.toString(),
//         "decription": descCtrl.text.toString(),
//         "Date": datectrl.text.toString(),
//         "App link": linkctrl.text.toString(),
//         "Git link": gitctrl.text.toString(),
//         "Youtube link": youtubectrl.text.toString(),
//         "ID": id,
//         "image": newUrl.toString()
//       }).then((value) {
//         ToastmessageService().toastmessage("Sucsessful data uploaded");
//         viewModel.setvalue(false);
//       }).onError((error, stackTrace) {
//         ToastmessageService().toastmessage(error.toString());
//         viewModel.setvalue(false);
//       });
//     });
//   }
// }

class ProjectService {
  Future<void> saveOrUpdateProject(
    viewModel,
    String? id,
    titlectrl,
    descCtrl,
    datectrl,
    linkctrl,
    gitctrl,
    youtubectrl,
  ) async {
    print("------------This is a project services class--------------");
    viewModel.setvalue(true);
    CollectionReference cref =
        FirebaseFirestore.instance.collection("Projects");

    var newData = {
      "title": titlectrl.text.toString(),
      "description": descCtrl.text.toString(),
      "Date": datectrl.text.toString(),
      "App link": linkctrl.text.toString(),
      "Git link": gitctrl.text.toString(),
      "Youtube link": youtubectrl.text.toString(),
      "ID": id ?? DateTime.now().millisecondsSinceEpoch.toString(),
    };

    if (viewModel.image != null) {
      print("-------------image is not null-----------");
      firebase_storage.Reference ref = firebase_storage.FirebaseStorage.instance
          .ref("/mypic/${DateTime.now().millisecondsSinceEpoch}");
      firebase_storage.UploadTask uploadTask =
          ref.putFile(viewModel.image!.absolute);

      var newUrl = await uploadTask.then((snapshot) async {
        return await ref.getDownloadURL();
      });

      print("-------------we get image url-----------$newUrl");
      log("-------------we get image url-----------$newUrl");
      newData["image"] = newUrl.toString();

      if (id != null) {
        print("-------------ID is not null-----------");
        newData.removeWhere((key, value) => value == null || value.isEmpty);

        await cref.doc(id).update(newData).then((value) {
          ToastmessageService().toastmessage("Successfully updated");
          viewModel.setvalue(false);
        }).onError((error, stackTrace) {
          ToastmessageService().toastmessage(error.toString());
          viewModel.setvalue(false);
        });
      } else {
        print("-------------ID is  null-----------");
        await cref.doc(newData["ID"]).set(newData).then((value) {
          ToastmessageService().toastmessage("Successfully added");
          viewModel.setvalue(false);
        }).onError((error, stackTrace) {
          ToastmessageService().toastmessage(error.toString());
          viewModel.setvalue(false);
        });
      }
    } else {
      if (id != null) {
        print("-------------ID is not null-----------");
        // Remove fields with empty values to prevent overwriting existing data
        newData.removeWhere((key, value) => value == null || value.isEmpty);

        await cref.doc(id).update(newData).then((value) {
          ToastmessageService().toastmessage("Successfully updated");
          viewModel.setvalue(false);
        }).onError((error, stackTrace) {
          ToastmessageService().toastmessage(error.toString());
          viewModel.setvalue(false);
        });
      } else {
        print("-------------ID is  null-----------");
        await cref.doc(newData["ID"]).set(newData).then((value) {
          ToastmessageService().toastmessage("Successfully added");
          viewModel.setvalue(false);
        }).onError((error, stackTrace) {
          ToastmessageService().toastmessage(error.toString());
          viewModel.setvalue(false);
        });
      }
    }
  }
}
