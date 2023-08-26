import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../../../services/toastmessage_service.dart';
import '../../common/ui_helpers.dart';
import '../../widgets/common/mytextfield/mytextfield.dart';
import '../../widgets/common/roundbutton/roundbutton.dart';
import 'editskill_viewmodel.dart';

class EditskillView extends StackedView<EditskillViewModel> {
  final String title;
  final double slidervalue;
  final String id;
  final int selectedindex;
  const EditskillView(
      {Key? key,
      required this.title,
      required this.slidervalue,
      required this.id,
      required this.selectedindex})
      : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    EditskillViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 176, 213, 243),
        title: const Center(child: Text("Edit SKILLS")),
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
                  title: title,
                  ctrl: viewModel.skillctrl,
                ),
                verticalSpaceSmall,
                Slider(
                  min: 0,
                  max: 1,
                  value: slidervalue,
                  onChanged: (value) {
                    viewModel.updatedslidervalue(value);
                  },
                ),
                verticalSpaceMedium,
                Roundbutton(
                  title: "Edit",
                  loading: viewModel.loading1,
                  onTap: () {
                    if (selectedindex != -1) {
                      viewModel.ref.doc(id).update({
                        "skill_name": viewModel.skillctrl.text,
                        "slider value": viewModel.slideValue.toStringAsFixed(2),
                      }).then((value) {
                        ToastmessageService().toastmessage("Updated");
                      }).onError((error, stackTrace) {
                        ToastmessageService().toastmessage(error.toString());
                      });
                    }
                    Navigator.pop(context);
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
  EditskillViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      EditskillViewModel();
}
