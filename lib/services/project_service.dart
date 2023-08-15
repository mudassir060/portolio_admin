import 'package:portolio_admin/services/toastmessage_service.dart';

import '../ui/views/add_projects/add_projects_viewmodel.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;

class ProjectService {
  Future<void> uploadProject(
    viewModel,
    String id,
    titlectrl,
    descCtrl,
    datectrl,
    linkctrl,
    gitctrl,
    youtubectrl,
  ) async {
    viewModel.setvalue(true);

    firebase_storage.Reference ref = firebase_storage.FirebaseStorage.instance
        .ref("/mypic/${DateTime.now().millisecondsSinceEpoch}");
    firebase_storage.UploadTask uploadTask =
        ref.putFile(viewModel.image!.absolute);

    await Future.value(uploadTask).then((value) async {
      var newUrl = await ref.getDownloadURL();
      await viewModel.fireStore.doc(id).set({
        "title": titlectrl.text.toString(),
        "decription": descCtrl.text.toString(),
        "Date": datectrl.text.toString(),
        "App link": linkctrl.text.toString(),
        "Git link": gitctrl.text.toString(),
        "Youtube link": youtubectrl.text.toString(),
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
