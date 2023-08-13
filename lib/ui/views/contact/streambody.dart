import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'contact_view.dart';
import 'contact_viewmodel.dart';

class Streambody extends StackedView<ContactViewModel> {
  
  const Streambody({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ContactViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: StreamBuilder(
        stream: viewModel.contactstream,
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator();
          }

          if (snapshot.hasError) {
            return const Text("Some error");
          }

          if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
            return const ContactView(data: {});
          }

          final document = snapshot.data!.docs.first;
          final data = document.data() as Map<String, dynamic>;
        

          return ContactView(data:data);
        },
      ),
    );
  }
  @override
  ContactViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ContactViewModel();
}
