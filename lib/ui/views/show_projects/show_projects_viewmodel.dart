import 'package:portolio_admin/app/app.locator.dart';
import 'package:portolio_admin/ui/bottom_sheets/notice/images.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class ShowProjectsViewModel extends BaseViewModel {
  final navigationService = locator<NavigationService>();

  final project = [system, std, school_, bird, hostel_, vehicle_, Go, app];
}
