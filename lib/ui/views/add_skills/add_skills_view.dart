import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../../common/ui_helpers.dart';
import '../../widgets/common/mytextfield/mytextfield.dart';
import '../../widgets/common/roundbutton/roundbutton.dart';
import 'add_skills_viewmodel.dart';

class AddSkillsView extends StackedView<AddSkillsViewModel> {
  const AddSkillsView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    AddSkillsViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 176, 213, 243),
        title: const Center(child: Text("ADD SKILLS")),
      ),
      body: SizedBox(
        height: 500,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                verticalSpaceMassive,
                Mytextfield(
                  title: "SKILL",
                  ctrl: viewModel.skillctrl,
                ),
                verticalSpaceSmall,
                Slider(
                  min: 0,
                  max: 1,
                  value: viewModel.slideValue,
                  onChanged: (value) {
                    viewModel.slidervalue(value);
                  },
                ),
                verticalSpaceMedium,
                Roundbutton(
                  title: "ADD",
                  loading: viewModel.loading1,
                  onTap: () {
                    String id =
                        DateTime.now().millisecondsSinceEpoch.toString();
                    viewModel.skillService.uploadDataFirestore(id,
                        viewModel.skillctrl, viewModel.slideValue, viewModel);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  AddSkillsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      AddSkillsViewModel();
}
