import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../../../services/toastmessage_service.dart';
import '../../common/app_colors.dart';
import '../../common/ui_helpers.dart';
import '../../widgets/common/mytextfield/mytextfield.dart';
import '../../widgets/common/roundbutton/roundbutton.dart';
import 'editproject_viewmodel.dart';

class EditprojectView extends StackedView<EditprojectViewModel> {
  final String firestoreimage;
  final String? title;
  final String? description;
  final String? date;
  final String? applink;
  final String? gitlink;
  final String? youtubelink;
  final String? id;
  final int index;
  const EditprojectView(
      {Key? key,
      required this.firestoreimage,
     required this.title,
     required this.description,
     required this.date,
      required this.applink,
     required this.gitlink,
     required this.youtubelink,
     required this.id,
     required this.index
      })
      : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    EditprojectViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Edit Projects")),
        backgroundColor: kcPrimaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              verticalSpaceMassive,
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
                      : Image(image: NetworkImage(firestoreimage)),
                ),
              ),
              verticalSpaceMedium,
              Mytextfield(
                title: title,
                ctrl: viewModel.titlectrl,
              ),
              verticalSpaceSmall,
              Mytextfield(
                title: description,
                ctrl: viewModel.descCtrl,
              ),
              verticalSpaceSmall,
              Mytextfield(
                title: date,
                ctrl: viewModel.datectrl,
              ),
              verticalSpaceSmall,
              Mytextfield(
                title: applink,
                ctrl: viewModel.linkctrl,
              ),
              verticalSpaceSmall,
              Mytextfield(
                title: gitlink,
                ctrl: viewModel.gitctrl,
              ),
              verticalSpaceSmall,
              Mytextfield(
                title: youtubelink,
                ctrl: viewModel.youtubectrl,
              ),
              verticalSpaceLarge,
              Roundbutton(
                  title: "Edit",
                  loading: viewModel.loading1,
                  onTap: () async {
                  
                     if ( index!= -1) {
                      viewModel.cref.doc(id).update({
                        "title": viewModel.titlectrl.text,
                        "decription": viewModel.descCtrl.text,
                         "Date": viewModel.datectrl.text,
                          "App link": viewModel.linkctrl.text,
                           "Git link": viewModel.gitctrl.text,
                            "Youtube link": viewModel.youtubectrl.text,
                            "image":viewModel.imageUrl
                      }).then((value) {
                        ToastmessageService().toastmessage("Updated");
                      }).onError((error, stackTrace) {
                        ToastmessageService().toastmessage(error.toString());
                      });
                    }
                    Navigator.pop(context);

                  })
            ],
          ),
        ),
      ),
    );
  }

  @override
  EditprojectViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      EditprojectViewModel();
}
