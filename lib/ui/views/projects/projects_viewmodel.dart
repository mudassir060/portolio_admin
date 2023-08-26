import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';

class ProjectsViewModel extends BaseViewModel {
  CollectionReference cref = FirebaseFirestore.instance.collection("Projects");

  final navigationService = locator<NavigationService>();
  // ignore: non_constant_identifier_names
  int selected_index = -1;
  void setindex(index) {
    selected_index = index;
    notifyListeners();
  }
}
