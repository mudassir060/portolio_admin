import 'package:flutter/material.dart';
import 'package:portolio_admin/ui/common/ui_helpers.dart';
import 'package:stacked/stacked.dart';
import '../../widgets/common/mytextfield/mytextfield.dart';
import '../../widgets/common/roundbutton/roundbutton.dart';
import 'contact_viewmodel.dart';

class ContactView extends StackedView<ContactViewModel> {
  final data;
  const ContactView({Key? key, this.data}) : super(key: key);
  @override
  void onViewModelReady(ContactViewModel viewModel) {
    viewModel.emailctrl.text = data['Email'] ?? "";
    viewModel.facebookCtrl.text = data['Facebook link'] ?? "";
    viewModel.linkdinctrl.text = data['Linkdin link'] ?? "";
    viewModel.githubctrl.text = data['Github link'] ?? "";
    viewModel.contactctrl.text = data['ContactNo'] ?? "";

    super.onViewModelReady(viewModel);
  }

  @override
  Widget builder(
    BuildContext context,
    ContactViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contact details"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              verticalSpaceMedium,
              Mytextfield(
                title: "Email Id",
                ctrl: viewModel.emailctrl,
              ),
              verticalSpaceSmall,
              Mytextfield(
                title: "ContactNo",
                ctrl: viewModel.contactctrl,
              ),
              verticalSpaceSmall,
              Mytextfield(
                title: "Facebook link",
                ctrl: viewModel.facebookCtrl,
              ),
              verticalSpaceSmall,
              Mytextfield(
                title: "Github link",
                ctrl: viewModel.githubctrl,
              ),
              verticalSpaceSmall,
              Mytextfield(
                title: "Linkdin link",
                ctrl: viewModel.linkdinctrl,
              ),
              verticalSpaceLarge,
              Roundbutton(
                  title: "UPDATE",
                  loading: viewModel.loading1,
                  onTap: () async {
                    String id =
                        DateTime.now().millisecondsSinceEpoch.toString();
                  viewModel. contactService.contact(
                        viewModel,
                        id,
                        viewModel.emailctrl,
                        viewModel.facebookCtrl,
                        viewModel.linkdinctrl,
                        viewModel.githubctrl,
                        viewModel.contactctrl);
                  })
            ],
          ),
        ),
      ),
    );
  }

  @override
  ContactViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ContactViewModel();
}
