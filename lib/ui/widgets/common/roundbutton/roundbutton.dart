import 'package:flutter/material.dart';
import 'package:portolio_admin/ui/common/app_colors.dart';
import 'package:stacked/stacked.dart';

import 'roundbutton_model.dart';

class Roundbutton extends StackedView<RoundbuttonModel> {
  final String title;
  final VoidCallback onTap;
  final bool loading;

  const Roundbutton(
      {Key? key,
      required this.title,
      required this.onTap,
      this.loading = false})
      : super(key: key);
  @override
  Widget builder(
    BuildContext context,
    RoundbuttonModel viewModel,
    Widget? child,
  ) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 50,
        width: 350,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color.fromARGB(255, 164, 211, 250),
        ),
        child: Center(
          child: loading
              ? const CircularProgressIndicator(
                  color: Colors.white,
                  strokeWidth: 3,
                )
              : Text(
                  title,
                  style: const TextStyle(
                      color:kcVeryLightGrey),
                ),
        ),
      ),
    );
  }

  @override
  RoundbuttonModel viewModelBuilder(
    BuildContext context,
  ) =>
      RoundbuttonModel();
}
