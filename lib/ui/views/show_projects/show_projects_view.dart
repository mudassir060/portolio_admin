import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:portolio_admin/app/app.router.dart';
import 'package:portolio_admin/ui/common/ui_helpers.dart';
import 'package:portolio_admin/ui/views/projects/projects_view.dart';
import 'package:stacked/stacked.dart';

import 'show_projects_viewmodel.dart';

class ShowProjectsView extends StackedView<ShowProjectsViewModel> {
  const ShowProjectsView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ShowProjectsViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Projects Page"),
      ),
      body: StreamBuilder(
          stream: viewModel.projectStream,
          builder:
              (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            }

            if (snapshot.hasError) return const Text("some error");
            return ListView.builder(
                itemCount: snapshot.data!.docs.length,
                itemBuilder: ((context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        ProjectsView(
                            image1: snapshot.data!.docs[index]['image'],index:index,
                            title:snapshot.data!.docs[index]['title'],
                            description: snapshot.data!.docs[index]['decription'],
                            date: snapshot.data!.docs[index]['Date'],
                            applink: snapshot.data!.docs[index]['App link'],
                            gitlink: snapshot.data!.docs[index]['Git link'],
                            youtubelink: snapshot.data!.docs[index]['Youtube link'],

                            id:snapshot.data!.docs[index]['ID']
                            
                            ),
                        verticalSpaceSmall
                      ],
                    ),
                  );
                }));
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          viewModel.navigationService.navigateToAddProjectsView();
          // Navigator.of(context).push(
          //   MaterialPageRoute(builder: (context) => const Projectbottomsheet()),
          // );
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  @override
  ShowProjectsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ShowProjectsViewModel();
}
