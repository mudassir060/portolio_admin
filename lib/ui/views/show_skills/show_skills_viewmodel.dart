import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:portolio_admin/app/app.locator.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class ShowSkillsViewModel extends BaseViewModel {
  final navigationService = locator<NavigationService>();
final SkillsStream =
      FirebaseFirestore.instance.collection("Skills").snapshots();

}
