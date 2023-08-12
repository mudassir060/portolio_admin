import 'package:portolio_admin/services/toastmessage_service.dart';

import '../ui/views/contact/contact_viewmodel.dart';

class ContactService {
  Future<void> contact(
    ContactViewModel viewModel,
    String id,
    emailctrl,
    facebookCtrl,
    linkdinctrl,
    githubctrl,
    contactctrl,
  ) async {
    viewModel.setvalue(true);
    await viewModel.fireStore.doc(id).set({
      "Email": emailctrl.text.toString(),
      "ContactNo": contactctrl.text.toString(),
      "Facebook link": facebookCtrl.text.toString(),
      "Github link": githubctrl.text.toString(),
      "Linkdin link": linkdinctrl.text.toString(),
      "ID": id,
    }).then((value) {
      ToastmessageService().toastmessage("Sucsessful data uploaded");
      viewModel.setvalue(false);
    }).onError((error, stackTrace) {
      ToastmessageService().toastmessage(error.toString());
      viewModel.setvalue(false);
    });
  }
}
