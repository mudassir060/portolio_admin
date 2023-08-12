import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:portolio_admin/ui/views/description/body.dart';
import 'package:stacked/stacked.dart';
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
        body: StreamBuilder(
            stream: viewModel.descriptionStream,
            builder:
                (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
              final document = snapshot.data!.docs.first;
              final data = document.data() as Map<String, dynamic>;
             

              if (snapshot.connectionState == ConnectionState.waiting) {
                return const CircularProgressIndicator();
              }

              if (snapshot.hasError) {
                return const Text("some error");
              }
              // if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
              //   return const Text("No data available");
              // }
              return DescriptionBodyView(data: data);
            }));
  }

  @override
  DescriptionViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      DescriptionViewModel();
}
