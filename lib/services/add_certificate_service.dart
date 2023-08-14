import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:portolio_admin/services/toastmessage_service.dart';

import '../ui/views/add_certificate/add_certificate_viewmodel.dart';

class AddCertificateService {
  Future<void> uploadCertificate(
      ADDcertificateViewModel viewModel, String id, titlectrl, descCtrl) async {
    viewModel.setvalue(true);

    firebase_storage.Reference ref = firebase_storage.FirebaseStorage.instance
        .ref("/mypic/${DateTime.now().millisecondsSinceEpoch}");

    firebase_storage.Reference pdfRef = firebase_storage
        .FirebaseStorage.instance
        .ref("/pdfs/${DateTime.now().millisecondsSinceEpoch}");

    firebase_storage.UploadTask imageUploadTask =
        ref.putFile(viewModel.image!.absolute);

    firebase_storage.UploadTask pdfUploadTask =
        pdfRef.putFile(viewModel.pdfFile!.absolute);

    // Wait for both image and PDF uploads to complete
    await Future.wait([imageUploadTask, pdfUploadTask])
        .then((uploadTasks) async {
      var imageUrl = await ref.getDownloadURL();
      var pdfUrl = await pdfRef.getDownloadURL();

      await viewModel.fireStore.doc(id).set({
        "title": titlectrl.text.toString(),
        "decription": descCtrl.text.toString(),
        "ID": id,
        "image": imageUrl.toString(),
        "pdf": pdfUrl.toString(),
      }).then((value) {
        ToastmessageService().toastmessage("Successful data uploaded");
        viewModel.setvalue(false);
      }).catchError((error) {
        ToastmessageService().toastmessage("Error uploading data: $error");
        viewModel.setvalue(false);
      });
    }).catchError((error) {
      ToastmessageService().toastmessage("Error uploading files: $error");
      viewModel.setvalue(false);
    });
  }
}
