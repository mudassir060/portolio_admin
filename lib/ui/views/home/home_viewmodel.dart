import 'package:flutter/cupertino.dart';
import 'package:portolio_admin/ui/views/description/description_view.dart';
import 'package:stacked/stacked.dart';

import '../contact/contact_view.dart';
import '../show_projects/show_projects_view.dart';
import '../show_skills/show_skills_view.dart';
import '../showcertificate/showcertificate_view.dart';

class HomeViewModel extends BaseViewModel {
  // final _dialogService = locator<DialogService>();
  // final _bottomSheetService = locator<BottomSheetService>();

  int selectedIndex = 0;

  void onNavigationItemTapped(int index) {
    selectedIndex = index;
    notifyListeners();
  }

  Widget getSelectedScreen() {
    switch (selectedIndex) {
      case 0:
        return const DescriptionView();
      case 1:
        return const ShowSkillsView();
      case 2:
        return const ShowProjectsView();
      case 3:
        return const ShowcertificateView();
      case 4:
        return const ContactView();

      default:
        return Container();
    }
  }

  // String get counterLabel => 'Counter is: $_counter';

  // int _counter = 0;

  // void incrementCounter() {
  //   _counter++;
  //   rebuildUi();
  // }

  // void showDialog() {
  //   _dialogService.showCustomDialog(
  //     variant: DialogType.infoAlert,
  //     title: 'Stacked Rocks!',
  //     description: 'Give stacked $_counter stars on Github',
  //   );
  // }

  // void showBottomSheet() {
  //   _bottomSheetService.showCustomSheet(
  //     variant: BottomSheetType.notice,
  //     title: ksHomeBottomSheetTitle,
  //     description: ksHomeBottomSheetDescription,
  //   );
  // }
}
