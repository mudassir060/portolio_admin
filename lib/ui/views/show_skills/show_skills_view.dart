import 'package:flutter/material.dart';
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
      body: ListView.builder(
          itemCount: viewModel.data.length,
          itemBuilder: ((context, index) {
            final item = viewModel.data[index];
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Skillview(
                      percentage: double.parse(item['percentage']!),
                      label: item['label']!),
                  verticalSpaceSmall
                ],
              ),
            );
          })),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          viewModel.showBottomSheet();
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
