import 'package:flutter/material.dart';
import 'package:portolio_admin/ui/common/ui_helpers.dart';
import 'package:stacked/stacked.dart';

import '../../../services/toastmessage_service.dart';
import '../../common/app_colors.dart';
import '../../widgets/common/mytextfield/mytextfield.dart';
import '../../widgets/common/roundbutton/roundbutton.dart';
import 'description_viewmodel.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;

class DescriptionView extends StackedView<DescriptionViewModel> {
  const DescriptionView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    DescriptionViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Title page")),
      ),
      body: Padding(
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
                      border: Border.all(color: kcDarkGreyColor)),
                  child: viewModel.image != null
                      ? Image.file(viewModel.image!.absolute)
                      : const Icon(Icons.image),
                ),
              ),
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
                    viewModel.setvalue(true);
                    String id =
                        DateTime.now().millisecondsSinceEpoch.toString();

                    await viewModel.fireStore.doc(id).set({
                      "title": viewModel.titlectrl.text.toString(),
                      "decription": viewModel.decctrl.text.toString(),
                      "About": viewModel.aboutctrl.text.toString(),
                      "ID": id,
                    }).then((value) {
                      ToastmessageService()
                          .toastmessage("Sucsessful data uploaded");

                      viewModel.setvalue(false);
                    }).onError((error, stackTrace) {
                      ToastmessageService().toastmessage(error.toString());

                      viewModel.setvalue(false);
                    });
                    //--------------------------
                    //image uploaded
                    viewModel.setvalue(true);
                    firebase_storage.Reference ref = firebase_storage
                        .FirebaseStorage.instance
                        .ref("/mypic/${DateTime.now().millisecondsSinceEpoch}");
                    firebase_storage.UploadTask uploadTask =
                        ref.putFile(viewModel.image!.absolute);

                    await Future.value(uploadTask).then(
                      (value) async {
                        var newUrl = await ref.getDownloadURL();
                        String id =
                            DateTime.now().millisecondsSinceEpoch.toString();

                        viewModel.fireStore
                            .doc(id)
                            .set({"image": newUrl.toString(), "id": id}).then(
                                (value) {
                          viewModel.setvalue(false);
                          ToastmessageService().toastmessage("uploaded");
                        }).onError((error, stackTrace) {
                          viewModel.setvalue(false);
                          ToastmessageService().toastmessage(error.toString());
                        });
                      },
                    ).onError((error, stackTrace) {
                      viewModel.setvalue(false);
                      ToastmessageService().toastmessage(error.toString());
                    });
                  })
            ],
          ),
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
