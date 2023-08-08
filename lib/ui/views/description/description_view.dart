import 'package:flutter/material.dart';
import 'package:portolio_admin/ui/common/ui_helpers.dart';
import 'package:stacked/stacked.dart';

import '../../common/app_colors.dart';
import '../../widgets/common/mytextfield/mytextfield.dart';
import '../../widgets/common/roundbutton/roundbutton.dart';
import 'description_viewmodel.dart';

class DescriptionView extends StackedView<DescriptionViewModel> {
  const DescriptionView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    DescriptionViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Title page")),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              verticalSpaceMedium,
              InkWell(
                onTap: () {
                  viewModel.getImageGallary();
                },
                child: Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color:kcDarkGreyColor)),
                  child: viewModel.image != null
                      ? Image.file(viewModel.image!.absolute)
                      : const Icon(Icons.image),
                ),
              ),
              verticalSpaceLarge,
              const Mytextfield(
                title: "Job title",
              ),
              verticalSpaceMedium,
              const Mytextfield(
                title: "Description",
                length: 2,
              ),
              verticalSpaceMedium,
              const Mytextfield(
                title: "About",
                length: 4,
              ),
              verticalSpaceLarge,
              Roundbutton(title: "Updated", onTap: () {})
            ],
          ),
        ),
      ),
    );
  }

  @override
  DescriptionViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      DescriptionViewModel();
}
