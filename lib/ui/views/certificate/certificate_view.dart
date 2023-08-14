import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
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
    return SingleChildScrollView(
      child: Column(
        children: [
          ListView.builder(
            shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
            itemCount: viewModel.certificatedata.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () => viewModel.navigateToPDFScreen(
                    context, viewModel.certificatedata[index]),
                child: achiv(viewModel.imagedata[
                    index]), 
              );
            },
          ),
        ],
      ),
    );
  }

  @override
  CertificateViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      CertificateViewModel();
}
