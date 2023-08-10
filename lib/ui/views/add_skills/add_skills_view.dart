import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../../services/toastmessage_service.dart';
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
      body: SizedBox(
        height: 500,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                AppBar(
                  backgroundColor: const Color.fromARGB(255, 176, 213, 243),
                  title: const Center(child: Text("ADD SKILLS")),
                ),
                verticalSpaceMassive,
                Mytextfield(
                  title: "SKILL",
                  ctrl: viewModel.skillctrl,
                ),
                verticalSpaceSmall,
                Slider(
                  min: 0,
                  max: 100,
                  value: viewModel.slideValue,
                  onChanged: (value) {
                    viewModel.slidervalue(value);
                  },
                ),
                verticalSpaceMedium,
                Roundbutton(
                  title: "ADD",
                  loading: viewModel.loading,
                  onTap: () async {
                    viewModel.setvalue(true);
                    String id =
                        DateTime.now().millisecondsSinceEpoch.toString();

                    await viewModel.fireStore.doc(id).set({
                      "skill_name": viewModel.skillctrl.text.toString(),
                      "slider value": viewModel.slideValue.toStringAsFixed(2),
                      "ID": id,
                    }).then((value) {
                      ToastmessageService()
                          .toastmessage("Successful data uploaded");

                      viewModel.setvalue(false);
                    }).onError((error, stackTrace) {
                      ToastmessageService().toastmessage(error.toString());

                      viewModel.setvalue(false);
                    });
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
