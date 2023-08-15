import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';

class ProjectsViewModel extends BaseViewModel {
  final navigationService = locator<NavigationService>();
   int selected_index = -1;
  void setindex(index) {
    selected_index = index;
    notifyListeners();
  }
}
