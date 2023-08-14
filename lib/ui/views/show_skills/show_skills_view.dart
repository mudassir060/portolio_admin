import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:portolio_admin/app/app.router.dart';
import 'package:portolio_admin/ui/common/ui_helpers.dart';
import 'package:portolio_admin/ui/views/skill/skill_view.dart';
import 'package:stacked/stacked.dart';
import 'show_skills_viewmodel.dart';

class ShowSkillsView extends StackedView<ShowSkillsViewModel> {
  const ShowSkillsView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ShowSkillsViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Skills Page"),
      ),
      body: StreamBuilder(
          stream: viewModel.SkillsStream,
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
                        Skillview(
                            percentage: double.parse(
                                snapshot.data!.docs[index]['slider value']),
                            label: snapshot.data!.docs[index]['skill_name']
                                .toString()),
                        verticalSpaceSmall
                      ],
                    ),
                  );
                }));
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          viewModel.navigationService.navigateToAddSkillsView();
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  @override
  ShowSkillsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ShowSkillsViewModel();
}
