import 'package:flutter/material.dart';
import 'package:portolio_admin/ui/common/ui_helpers.dart';
import 'package:portolio_admin/ui/widgets/common/mytextfield/mytextfield.dart';
import 'package:portolio_admin/ui/widgets/common/roundbutton/roundbutton.dart';
import 'package:stacked/stacked.dart';

import '../../common/app_colors.dart';
import 'add_projects_viewmodel.dart';

class AddProjectsView extends StackedView<AddProjectsViewModel> {
  const AddProjectsView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    AddProjectsViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("ADD Projects")),
        backgroundColor: kcPrimaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              verticalSpaceMassive,
              InkWell(
                onTap: () {
                  viewModel.getImageGallary();
                },
                child: Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: kcDarkGreyColor)),
                  child: viewModel.image != null
                      ? Image.file(viewModel.image!.absolute)
                      : const Icon(Icons.image),
                ),
              ),
              verticalSpaceMedium,
              Mytextfield(
                title: "Title",
                ctrl: viewModel.titlectrl,
              ),
              verticalSpaceSmall,
              Mytextfield(
                title: "description",
                ctrl: viewModel.descCtrl,
              ),
              verticalSpaceSmall,
              Mytextfield(
                title: "Date",
                ctrl: viewModel.datectrl,
              ),
              verticalSpaceSmall,
              Mytextfield(
                title: "App link",
                ctrl: viewModel.linkctrl,
              ),
              verticalSpaceSmall,
              Mytextfield(
                title: "Git link",
                ctrl: viewModel.gitctrl,
              ),
              verticalSpaceSmall,
              Mytextfield(
                title: "Youtube link",
                ctrl: viewModel.youtubectrl,
              ),
              verticalSpaceLarge,
              Roundbutton(title: "ADD", onTap: () {})
            ],
          ),
        ),
      ),
    );
  }

  @override
  AddProjectsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      AddProjectsViewModel();
}
