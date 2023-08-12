import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:portolio_admin/app/app.locator.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:portolio_admin/services/toastmessage_service.dart';
import 'package:portolio_admin/services/title_page_service.dart';
import 'package:portolio_admin/services/skill_page_service.dart';
import 'package:portolio_admin/services/project_service.dart';
import 'package:portolio_admin/services/add_certificate_service.dart';
import 'package:portolio_admin/services/contact_service.dart';
// @stacked-import

import 'test_helpers.mocks.dart';

@GenerateMocks([], customMocks: [
  MockSpec<NavigationService>(onMissingStub: OnMissingStub.returnDefault),
  MockSpec<BottomSheetService>(onMissingStub: OnMissingStub.returnDefault),
  MockSpec<DialogService>(onMissingStub: OnMissingStub.returnDefault),
  MockSpec<ToastmessageService>(onMissingStub: OnMissingStub.returnDefault),
  MockSpec<TitlePageService>(onMissingStub: OnMissingStub.returnDefault),
  MockSpec<SkillPageService>(onMissingStub: OnMissingStub.returnDefault),
  MockSpec<ProjectService>(onMissingStub: OnMissingStub.returnDefault),
  MockSpec<AddCertificateService>(onMissingStub: OnMissingStub.returnDefault),
  MockSpec<ContactService>(onMissingStub: OnMissingStub.returnDefault),
// @stacked-mock-spec
])
void registerServices() {
  getAndRegisterNavigationService();
  getAndRegisterBottomSheetService();
  getAndRegisterDialogService();
  getAndRegisterToastmessageService();
  getAndRegisterTitlePageService();
  getAndRegisterSkillPageService();
  getAndRegisterProjectService();
  getAndRegisterAddCertificateService();
  getAndRegisterContactService();
// @stacked-mock-register
}

MockNavigationService getAndRegisterNavigationService() {
  _removeRegistrationIfExists<NavigationService>();
  final service = MockNavigationService();
  locator.registerSingleton<NavigationService>(service);
  return service;
}

MockBottomSheetService getAndRegisterBottomSheetService<T>({
  SheetResponse<T>? showCustomSheetResponse,
}) {
  _removeRegistrationIfExists<BottomSheetService>();
  final service = MockBottomSheetService();

  when(service.showCustomSheet<T, T>(
    enableDrag: anyNamed('enableDrag'),
    enterBottomSheetDuration: anyNamed('enterBottomSheetDuration'),
    exitBottomSheetDuration: anyNamed('exitBottomSheetDuration'),
    ignoreSafeArea: anyNamed('ignoreSafeArea'),
    isScrollControlled: anyNamed('isScrollControlled'),
    barrierDismissible: anyNamed('barrierDismissible'),
    additionalButtonTitle: anyNamed('additionalButtonTitle'),
    variant: anyNamed('variant'),
    title: anyNamed('title'),
    hasImage: anyNamed('hasImage'),
    imageUrl: anyNamed('imageUrl'),
    showIconInMainButton: anyNamed('showIconInMainButton'),
    mainButtonTitle: anyNamed('mainButtonTitle'),
    showIconInSecondaryButton: anyNamed('showIconInSecondaryButton'),
    secondaryButtonTitle: anyNamed('secondaryButtonTitle'),
    showIconInAdditionalButton: anyNamed('showIconInAdditionalButton'),
    takesInput: anyNamed('takesInput'),
    barrierColor: anyNamed('barrierColor'),
    barrierLabel: anyNamed('barrierLabel'),
    customData: anyNamed('customData'),
    data: anyNamed('data'),
    description: anyNamed('description'),
  )).thenAnswer((realInvocation) =>
      Future.value(showCustomSheetResponse ?? SheetResponse<T>()));

  locator.registerSingleton<BottomSheetService>(service);
  return service;
}

MockDialogService getAndRegisterDialogService() {
  _removeRegistrationIfExists<DialogService>();
  final service = MockDialogService();
  locator.registerSingleton<DialogService>(service);
  return service;
}

MockToastmessageService getAndRegisterToastmessageService() {
  _removeRegistrationIfExists<ToastmessageService>();
  final service = MockToastmessageService();
  locator.registerSingleton<ToastmessageService>(service);
  return service;
}

MockTitlePageService getAndRegisterTitlePageService() {
  _removeRegistrationIfExists<TitlePageService>();
  final service = MockTitlePageService();
  locator.registerSingleton<TitlePageService>(service);
  return service;
}

MockSkillPageService getAndRegisterSkillPageService() {
  _removeRegistrationIfExists<SkillPageService>();
  final service = MockSkillPageService();
  locator.registerSingleton<SkillPageService>(service);
  return service;
}

MockProjectService getAndRegisterProjectService() {
  _removeRegistrationIfExists<ProjectService>();
  final service = MockProjectService();
  locator.registerSingleton<ProjectService>(service);
  return service;
}

MockAddCertificateService getAndRegisterAddCertificateService() {
  _removeRegistrationIfExists<AddCertificateService>();
  final service = MockAddCertificateService();
  locator.registerSingleton<AddCertificateService>(service);
  return service;
}

MockContactService getAndRegisterContactService() {
  _removeRegistrationIfExists<ContactService>();
  final service = MockContactService();
  locator.registerSingleton<ContactService>(service);
  return service;
}
// @stacked-mock-create

void _removeRegistrationIfExists<T extends Object>() {
  if (locator.isRegistered<T>()) {
    locator.unregister<T>();
  }
}
