import 'package:portolio_admin/app/app.locator.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class ShowSkillsViewModel extends BaseViewModel {
final navigationService = locator<NavigationService>();

  
  final data = [
    {'percentage': '0.8', 'label': 'C++'},
    {'percentage': '0.8', 'label': 'OOPs'},
    {'percentage': '0.7', 'label': 'PYTHON'},
    {'percentage': '0.8', 'label': 'DART & FLUTTER'},
    {'percentage': '0.7', 'label': 'UI/UX'},
  ];
  
}
