import 'package:flutter/material.dart';
import 'package:portolio_admin/ui/common/ui_helpers.dart';
import 'package:stacked/stacked.dart';

import '../../widgets/common/mytextfield/mytextfield.dart';
import '../../widgets/common/roundbutton/roundbutton.dart';
import 'contact_viewmodel.dart';

class ContactView extends StackedView<ContactViewModel> {
  const ContactView({Key? key}) : super(key: key);

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
                title: "Contact No",
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
              Roundbutton(title: "UPDATE", onTap: () {})
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
