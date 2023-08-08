import 'package:flutter/material.dart';
import 'package:portolio_admin/ui/common/ui_helpers.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../widgets/common/mytextfield/mytextfield.dart';
import 'notice_sheet_model.dart';

class NoticeSheet extends StackedView<NoticeSheetModel> {
  final Function(SheetResponse)? completer;
  final SheetRequest request;
  const NoticeSheet({
    Key? key,
    required this.completer,
    required this.request,
  }) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    NoticeSheetModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: SizedBox(
        height: 300,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              AppBar(
                  backgroundColor: const Color.fromARGB(255, 176, 213, 243),
                  title: const Center(child: Text("ADD SKILLS"))),
              verticalSpaceMassive,
              const Mytextfield(
                title: "Value",
              ),
              verticalSpaceSmall,
              Slider(
                min: 0,
                max: 100,
                value: viewModel.sliderValue,
                onChanged: (value) {
                 viewModel.slidervalue(value);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  NoticeSheetModel viewModelBuilder(BuildContext context) => NoticeSheetModel();
}
