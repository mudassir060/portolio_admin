import 'package:cloud_firestore/cloud_firestore.dart';
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
    return StreamBuilder(
        stream: viewModel.certificatestream,
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            return Center(child: Text(snapshot.error.toString()));
          }

          return ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: snapshot.data!.docs.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () => viewModel.navigateToPDFScreen(
                      context, snapshot.data!.docs[index]['pdf']),
                  child: achiv(snapshot.data!.docs[index]['image'],snapshot.data!.docs[index]['pdf'],snapshot.data!.docs[index]['decription'],snapshot.data!.docs[index]['title'],index,snapshot.data!.docs[index]['ID']),
                ),
              );
            },
          );
        });
  }

  @override
  CertificateViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      CertificateViewModel();
}
