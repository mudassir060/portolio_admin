import 'package:flutter/material.dart';
import 'package:portolio_admin/ui/common/ui_helpers.dart';
import 'package:stacked/stacked.dart';
import '../../../services/add_certificate_service.dart';
import '../../common/app_colors.dart';
import '../../widgets/common/mytextfield/mytextfield.dart';
import '../../widgets/common/roundbutton/roundbutton.dart';
import 'add_certificate_viewmodel.dart';

class ADDcertificateView extends StackedView<ADDcertificateViewModel> {
  const ADDcertificateView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ADDcertificateViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("ADD Certificate")),
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
                          : const Icon(Icons.image),
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
                          ? Icon(Icons.picture_as_pdf)
                          : const Icon(Icons.image),
                    ),
                  ),
                ],
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
              verticalSpaceLarge,
              Roundbutton(
                  title: "ADD",
                  loading: viewModel.loading1,
                  onTap: () async {
                    String id =
                        DateTime.now().millisecondsSinceEpoch.toString();
                    viewModel.addCertificateService.uploadCertificate(
                      viewModel,
                      id,
                      viewModel.titlectrl,
                      viewModel.descCtrl,
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }

  @override
  ADDcertificateViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ADDcertificateViewModel();
}
