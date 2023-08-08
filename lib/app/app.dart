import 'package:portolio_admin/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:portolio_admin/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:portolio_admin/ui/views/home/home_view.dart';
import 'package:portolio_admin/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:portolio_admin/ui/views/description/description_view.dart';
import 'package:portolio_admin/ui/views/skill/skill_view.dart';
import 'package:portolio_admin/ui/views/show_skills/show_skills_view.dart';
import 'package:portolio_admin/ui/views/projects/projects_view.dart';
import 'package:portolio_admin/ui/views/show_projects/show_projects_view.dart';
import 'package:portolio_admin/ui/views/add_projects/add_projects_view.dart';
import 'package:portolio_admin/ui/views/certificate/certificate_view.dart';
import 'package:portolio_admin/ui/views/showcertificate/showcertificate_view.dart';
import 'package:portolio_admin/ui/views/add_certificate/add_certificate_view.dart';
import 'package:portolio_admin/ui/views/contact/contact_view.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView),
    MaterialRoute(page: StartupView),
    MaterialRoute(page: DescriptionView),
    MaterialRoute(page: SkillView),
    MaterialRoute(page: ShowSkillsView),
    MaterialRoute(page: ProjectsView),
    MaterialRoute(page: ShowProjectsView),
    MaterialRoute(page: AddProjectsView),
    MaterialRoute(page: CertificateView),
    MaterialRoute(page: ShowcertificateView),
    MaterialRoute(page: ADDcertificateView),
    MaterialRoute(page: ContactView),
// @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    // @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
)
class App {}
