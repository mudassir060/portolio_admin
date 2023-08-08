import 'package:flutter/material.dart';
import 'package:portolio_admin/app/app.router.dart';
import 'package:portolio_admin/ui/common/ui_helpers.dart';
import 'package:stacked/stacked.dart';

import '../certificate/certificate_view.dart';
import 'showcertificate_viewmodel.dart';

class ShowcertificateView extends StackedView<ShowcertificateViewModel> {
  const ShowcertificateView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ShowcertificateViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Certificate page"),
      ),
      body: const SingleChildScrollView(
          child: Column(children: [
        verticalSpaceLarge,
        CertificateView(),
      ])),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          viewModel.navigationService.navigateToADDcertificateView();
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  @override
  ShowcertificateViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ShowcertificateViewModel();
}
