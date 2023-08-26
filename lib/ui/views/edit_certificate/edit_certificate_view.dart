import 'dart:core';
import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:portolio_admin/ui/common/app_colors.dart';
import 'package:portolio_admin/ui/common/ui_helpers.dart';
import 'package:stacked/stacked.dart';

import '../../widgets/common/mytextfield/mytextfield.dart';
import '../../widgets/common/roundbutton/roundbutton.dart';

import 'edit_certificate_viewmodel.dart';

class EditCertificateView extends StackedView<EditCertificateViewModel> {
  final String? certname;
  final String? pdf;
  final String? description;
  final String? title;

  final int index;
  final String id;

  const EditCertificateView(
      {Key? key,
      required this.certname,
      required this.pdf,
      required this.description,
      required this.title,
      required this.index,
       required this. id,
      
      })
      : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    EditCertificateViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Edit Certificate")),
        backgroundColor: kcPrimaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              verticalSpaceMassive,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
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
                          : Image(image: NetworkImage(certname!)),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      viewModel.getPdfGallary();
                    },
                    child: Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: kcDarkGreyColor),
                        ),
                        child: viewModel.pdfFile != null
                            ? const Center(child: Text(" pdf is picked"))
                            : const Icon(Icons.picture_as_pdf)),
                  ),
                ],
              ),
              verticalSpaceMedium,
              Mytextfield(
                title: title,
                ctrl: viewModel.titlectrl,
              ),
              verticalSpaceSmall,
              Mytextfield(
                title: description,
                ctrl: viewModel.descCtrl,
              ),
              verticalSpaceLarge,
              Roundbutton(
                  title: "Edit",
                  loading: viewModel.loading1,
                  onTap: () async{
                      try {
                  
                      await viewModel.certificateService.uploadCertificate(
                          viewModel,
                          id,
                          viewModel.titlectrl,
                          viewModel.descCtrl,
                          true);
                    } catch (e) {
                      log("Error during function call: $e");
                    }
                   
                  })
            ],
          ),
        ),
      ),
    );
  }

  @override
  EditCertificateViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      EditCertificateViewModel();
}
