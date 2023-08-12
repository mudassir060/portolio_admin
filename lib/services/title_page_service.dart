import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:portolio_admin/services/toastmessage_service.dart';

import '../ui/views/description/description_viewmodel.dart';

class TitlePageService {
  Future<void> uploadDescription(DescriptionViewModel viewModel, String id,
      titlectrl, descCtrl, aboutctrl) async {
    viewModel.setvalue(true);

    firebase_storage.Reference ref = firebase_storage.FirebaseStorage.instance
        .ref("/mypic/${DateTime.now().millisecondsSinceEpoch}");
    firebase_storage.UploadTask uploadTask =
        ref.putFile(viewModel.image!.absolute);
  final fireStore = FirebaseFirestore.instance.collection("Description");

    await Future.value(uploadTask).then((value) async {
      var newUrl = await ref.getDownloadURL();
      await fireStore.doc("id").set({
        "title": titlectrl.text.toString(),
        "decription": descCtrl.text.toString(),
        "About": descCtrl.text.toString(),
        "ID": id,
        "image": newUrl.toString()
      }).then((value) {
        ToastmessageService().toastmessage("Sucsessful data uploaded");
        viewModel.setvalue(false);
      }).onError((error, stackTrace) {
        ToastmessageService().toastmessage(error.toString());
        viewModel.setvalue(false);
      });
    });
  }
}
