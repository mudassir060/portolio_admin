import 'dart:developer';

import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:portolio_admin/services/toastmessage_service.dart';

class AddCertificateService {
  Future<void> uploadCertificate(
    viewModel,
    String? id,
    TextEditingController titlectrl,
    TextEditingController descCtrl,
    bool isUpdating,
  ) async {
    viewModel.setvalue(true);

    firebase_storage.Reference ref = firebase_storage.FirebaseStorage.instance
        .ref("/mypic/${DateTime.now().millisecondsSinceEpoch}");

    firebase_storage.Reference pdfRef = firebase_storage
        .FirebaseStorage.instance
        .ref("/pdfs/${DateTime.now().millisecondsSinceEpoch}");

    firebase_storage.UploadTask? imageUploadTask;
    firebase_storage.UploadTask? pdfUploadTask;

    if (viewModel.image != null) {
      imageUploadTask = ref.putFile(viewModel.image!.absolute);
    }

    if (viewModel.pdfFile != null) {
      pdfUploadTask = pdfRef.putFile(viewModel.pdfFile!.absolute);
    }

    List<UploadTask> tasks = [];
    if (imageUploadTask != null) {
      tasks.add(imageUploadTask);
    }
    if (pdfUploadTask != null) {
      tasks.add(pdfUploadTask);
    }

    try {
      await Future.wait(tasks).then((uploadTasks) async {
        var imageUrl =
            viewModel.image != null ? await ref.getDownloadURL() : null;
        var pdfUrl =
            viewModel.pdfFile != null ? await pdfRef.getDownloadURL() : null;

        Map<String, dynamic> certificateData = {
          "title": titlectrl.text.toString(),
          "decription": descCtrl.text.toString(),
          "ID": id,
        };

        if (imageUrl != null) {
          certificateData["image"] = imageUrl.toString();
        }

        if (pdfUrl != null) {
          certificateData["pdf"] = pdfUrl.toString();
        }

        if (isUpdating) {
          log("now enter in update certificate");
          certificateData.removeWhere((key, value) => value == null || value.isEmpty);

          await viewModel.fireStore
              .doc(id)
              .update(certificateData)
              .then((value) {
            ToastmessageService().toastmessage("Successful data updated");
            viewModel.setvalue(false);
          }).catchError((error) {
            ToastmessageService().toastmessage("Error updating data: $error");
            viewModel.setvalue(false);
          });
        } else {
          await viewModel.fireStore.doc(id).set(certificateData).then((value) {
            ToastmessageService().toastmessage("Successful data added");
            viewModel.setvalue(false);
          }).catchError((error) {
            ToastmessageService().toastmessage("Error adding data: $error");
            viewModel.setvalue(false);
          });
        }
      });
    } catch (error) {
      //ToastmessageService().toastmessage("Error uploading files: $error");
      log("Error uploading files: $error");
      viewModel.setvalue(false);
    }
  }
}
