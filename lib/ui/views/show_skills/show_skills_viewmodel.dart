import 'package:portolio_admin/app/app.locator.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.bottomsheets.dart';
import '../../common/app_strings.dart';

class ShowSkillsViewModel extends BaseViewModel {
  final bottomSheetService = locator<BottomSheetService>();
  final data = [
    {'percentage': '0.8', 'label': 'C++'},
    {'percentage': '0.8', 'label': 'OOPs'},
    {'percentage': '0.7', 'label': 'PYTHON'},
    {'percentage': '0.8', 'label': 'DART & FLUTTER'},
    {'percentage': '0.7', 'label': 'UI/UX'},
  ];
  showBottomSheet() {
    bottomSheetService.showCustomSheet(
      variant: BottomSheetType.notice,
      title: ksHomeBottomSheetTitle,
      description: ksHomeBottomSheetDescription,
    );
  }
}
