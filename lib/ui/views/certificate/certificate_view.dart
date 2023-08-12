import 'package:flutter/material.dart';
import 'package:portolio_admin/ui/common/ui_helpers.dart';
import 'package:stacked/stacked.dart';

import '../../bottom_sheets/notice/images.dart';

import 'Widget/achivement.dart';
import 'certificate_viewmodel.dart';

class CertificateView extends StackedView<CertificateViewModel> {
  const CertificateView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    CertificateViewModel viewModel,
    Widget? child,
  ) {
    void navigateToPDFScreen(BuildContext context, String cerName) {
      // Navigator.push(
      //   context,
      //   MaterialPageRoute(
      //     builder: (context) => PDFScreen(pdfAssetPath: cerName),
      //   ),
      // );
    }

    return Column(
      children: [
        GestureDetector(
          onTap: () => navigateToPDFScreen(context, certificate1),
          child: achiv(kic),
        ),
        verticalSpaceMedium,
        GestureDetector(
          onTap: () => navigateToPDFScreen(context, certificate2),
          child: achiv(ite),
        ),
        verticalSpaceMedium,
        GestureDetector(
          onTap: () => navigateToPDFScreen(context, certificate3),
          child: achiv(comp),
        ),
        verticalSpaceMedium,
        GestureDetector(
          onTap: () => navigateToPDFScreen(context, certificate4),
          child: achiv(char),
        ),
        verticalSpaceMedium,
        GestureDetector(
          onTap: () => navigateToPDFScreen(context, certificate5),
          child: achiv(arsh),
        ),
      ],
    );
  }

  @override
  CertificateViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      CertificateViewModel();
}
