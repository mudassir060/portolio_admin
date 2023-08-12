import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:portolio_admin/services/toastmessage_service.dart';

import '../ui/views/description/description_viewmodel.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;

class TitlePageService {
  Future<void> uploadDescription(DescriptionViewModel viewModel, String id,
      titlectrl, descCtrl, aboutctrl) async {
    viewModel.setvalue(true);

    try {
      final ref = firebase_storage.FirebaseStorage.instance
          .ref("/mypic/${DateTime.now().millisecondsSinceEpoch}");

      final uploadTask = ref.putFile(viewModel.image!.absolute);
      await uploadTask;

      final newUrl = await ref.getDownloadURL();

      final fireStore = FirebaseFirestore.instance.collection("Description");
      await fireStore.doc("data").set({
        "title": titlectrl.text.toString(),
        "decription": descCtrl.text.toString(),
        "About": aboutctrl.text.toString(),
        "ID": id,
        "image": newUrl.toString(),
      });

      ToastmessageService().toastmessage("Successful data uploaded");
      viewModel.setvalue(false);
    } catch (error) {
      ToastmessageService().toastmessage(error.toString());
      viewModel.setvalue(false);
    }
  }
}
