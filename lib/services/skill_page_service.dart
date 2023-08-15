import 'package:portolio_admin/services/toastmessage_service.dart';

class SkillPageService {
  Future<void> uploadDataFirestore(
      String id, skillctrl, slideValue, viewModel) async {
    viewModel.setvalue(true);
    await viewModel.fireStore.doc(id).set({
      "skill_name": skillctrl.text.toString(),
      "slider value": slideValue.toStringAsFixed(2),
      "ID": id,
    }).then((value) {
      ToastmessageService().toastmessage("Successful data uploaded");

      viewModel.setvalue(false);
    }).onError((error, stackTrace) {
      ToastmessageService().toastmessage(error.toString());

      viewModel.setvalue(false);
    });
  }
}
