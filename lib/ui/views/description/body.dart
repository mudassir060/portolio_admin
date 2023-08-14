import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:portolio_admin/ui/common/ui_helpers.dart';
import '../../../services/title_page_service.dart';
import '../../bottom_sheets/notice/images.dart';
import '../../common/app_colors.dart';
import '../../widgets/common/mytextfield/mytextfield.dart';
import '../../widgets/common/roundbutton/roundbutton.dart';
import 'description_viewmodel.dart';

class DescriptionBodyView extends StackedView<DescriptionViewModel> {
  final data;
  const DescriptionBodyView({Key? key, required this.data}) : super(key: key);
  @override
  void onViewModelReady(DescriptionViewModel viewModel) {
    viewModel.titlectrl.text = data['title'] ?? "";
    viewModel.decctrl.text = data['decription'] ?? "";
    viewModel.aboutctrl.text = data['About'] ?? "";
    super.onViewModelReady(viewModel);
  }

  @override
  Widget builder(
    BuildContext context,
    DescriptionViewModel viewModel,
    Widget? child,
  ) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            verticalSpaceMedium,
            InkWell(
                onTap: () {
                  viewModel.getImageGallary();
                },
                child: Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: kcDarkGreyColor),
                    image: data['image'] != null
                        ? DecorationImage(
                            image: NetworkImage(data['image']),
                            fit: BoxFit.cover,
                          )
                        : const DecorationImage(image: AssetImage(image)),
                  ),
                )),
            verticalSpaceSmall,
            verticalSpaceLarge,
            Mytextfield(
              title: "Job title",
              ctrl: viewModel.titlectrl,
            ),
            verticalSpaceMedium,
            Mytextfield(
              title: "Description",
              length: 2,
              ctrl: viewModel.decctrl,
            ),
            verticalSpaceMedium,
            Mytextfield(
              title: "About",
              length: 4,
              ctrl: viewModel.aboutctrl,
            ),
            verticalSpaceLarge,
            Roundbutton(
                title: "Updated",
                loading: viewModel.loading1,
                onTap: () async {
                  TitlePageService().uploadDescription(
                      viewModel,
                      viewModel.id,
                      viewModel.titlectrl,
                      viewModel.decctrl,
                      viewModel.aboutctrl);
                })
          ],
        ),
      ),
    );
  }

  @override
  DescriptionViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      DescriptionViewModel();
}
