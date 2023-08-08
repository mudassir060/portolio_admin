import 'package:flutter/material.dart';
import 'package:portolio_admin/ui/common/app_colors.dart';
import 'package:stacked/stacked.dart';

import 'mytextfield_model.dart';

class Mytextfield extends StackedView<MytextfieldModel> {
  final String? title;
  final int? length;
  final TextEditingController? ctrl;
  const Mytextfield({super.key, this.title, this.length, this.ctrl});

  @override
  Widget builder(
    BuildContext context,
    MytextfieldModel viewModel,
    Widget? child,
  ) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color:kcLightGrey,
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: TextFormField(
        maxLines: length,
        controller: ctrl,
        decoration: InputDecoration(
          hintText: title,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 12.0, vertical: 16.0),
          border: InputBorder.none,
        ),
      ),
    );
  }

  @override
  MytextfieldModel viewModelBuilder(
    BuildContext context,
  ) =>
      MytextfieldModel();
}
