// Mocks generated by Mockito 5.4.2 from annotations
// in portolio_admin/test/helpers/test_helpers.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;
import 'dart:ui' as _i5;

import 'package:flutter/material.dart' as _i3;
import 'package:mockito/mockito.dart' as _i1;
import 'package:portolio_admin/services/add_certificate_service.dart' as _i11;
import 'package:portolio_admin/services/contact_service.dart' as _i13;
import 'package:portolio_admin/services/project_service.dart' as _i10;
import 'package:portolio_admin/services/skill_page_service.dart' as _i9;
import 'package:portolio_admin/services/title_page_service.dart' as _i7;
import 'package:portolio_admin/services/toastmessage_service.dart' as _i6;
import 'package:portolio_admin/ui/views/add_certificate/add_certificate_viewmodel.dart'
    as _i12;
import 'package:portolio_admin/ui/views/contact/contact_viewmodel.dart' as _i14;
import 'package:portolio_admin/ui/views/description/description_viewmodel.dart'
    as _i8;
import 'package:stacked_services/stacked_services.dart' as _i2;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

/// A class which mocks [NavigationService].
///
/// See the documentation for Mockito's code generation for more information.
class MockNavigationService extends _i1.Mock implements _i2.NavigationService {
  @override
  String get previousRoute => (super.noSuchMethod(
        Invocation.getter(#previousRoute),
        returnValue: '',
        returnValueForMissingStub: '',
      ) as String);
  @override
  String get currentRoute => (super.noSuchMethod(
        Invocation.getter(#currentRoute),
        returnValue: '',
        returnValueForMissingStub: '',
      ) as String);
  @override
  _i3.GlobalKey<_i3.NavigatorState>? nestedNavigationKey(int? index) =>
      (super.noSuchMethod(
        Invocation.method(
          #nestedNavigationKey,
          [index],
        ),
        returnValueForMissingStub: null,
      ) as _i3.GlobalKey<_i3.NavigatorState>?);
  @override
  void config({
    bool? enableLog,
    bool? defaultPopGesture,
    bool? defaultOpaqueRoute,
    Duration? defaultDurationTransition,
    bool? defaultGlobalState,
    _i2.Transition? defaultTransitionStyle,
    String? defaultTransition,
  }) =>
      super.noSuchMethod(
        Invocation.method(
          #config,
          [],
          {
            #enableLog: enableLog,
            #defaultPopGesture: defaultPopGesture,
            #defaultOpaqueRoute: defaultOpaqueRoute,
            #defaultDurationTransition: defaultDurationTransition,
            #defaultGlobalState: defaultGlobalState,
            #defaultTransitionStyle: defaultTransitionStyle,
            #defaultTransition: defaultTransition,
          },
        ),
        returnValueForMissingStub: null,
      );
  @override
  _i4.Future<T?>? navigateWithTransition<T>(
    _i3.Widget? page, {
    bool? opaque,
    String? transition = r'',
    Duration? duration,
    bool? popGesture,
    int? id,
    _i3.Curve? curve,
    bool? fullscreenDialog = false,
    bool? preventDuplicates = true,
    _i2.Transition? transitionClass,
    _i2.Transition? transitionStyle,
    String? routeName,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #navigateWithTransition,
          [page],
          {
            #opaque: opaque,
            #transition: transition,
            #duration: duration,
            #popGesture: popGesture,
            #id: id,
            #curve: curve,
            #fullscreenDialog: fullscreenDialog,
            #preventDuplicates: preventDuplicates,
            #transitionClass: transitionClass,
            #transitionStyle: transitionStyle,
            #routeName: routeName,
          },
        ),
        returnValueForMissingStub: null,
      ) as _i4.Future<T?>?);
  @override
  _i4.Future<T?>? replaceWithTransition<T>(
    _i3.Widget? page, {
    bool? opaque,
    String? transition = r'',
    Duration? duration,
    bool? popGesture,
    int? id,
    _i3.Curve? curve,
    bool? fullscreenDialog = false,
    bool? preventDuplicates = true,
    _i2.Transition? transitionClass,
    _i2.Transition? transitionStyle,
    String? routeName,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #replaceWithTransition,
          [page],
          {
            #opaque: opaque,
            #transition: transition,
            #duration: duration,
            #popGesture: popGesture,
            #id: id,
            #curve: curve,
            #fullscreenDialog: fullscreenDialog,
            #preventDuplicates: preventDuplicates,
            #transitionClass: transitionClass,
            #transitionStyle: transitionStyle,
            #routeName: routeName,
          },
        ),
        returnValueForMissingStub: null,
      ) as _i4.Future<T?>?);
  @override
  bool back<T>({
    dynamic result,
    int? id,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #back,
          [],
          {
            #result: result,
            #id: id,
          },
        ),
        returnValue: false,
        returnValueForMissingStub: false,
      ) as bool);
  @override
  void popUntil(
    _i3.RoutePredicate? predicate, {
    int? id,
  }) =>
      super.noSuchMethod(
        Invocation.method(
          #popUntil,
          [predicate],
          {#id: id},
        ),
        returnValueForMissingStub: null,
      );
  @override
  void popRepeated(int? popTimes) => super.noSuchMethod(
        Invocation.method(
          #popRepeated,
          [popTimes],
        ),
        returnValueForMissingStub: null,
      );
  @override
  _i4.Future<T?>? navigateTo<T>(
    String? routeName, {
    dynamic arguments,
    int? id,
    bool? preventDuplicates = true,
    Map<String, String>? parameters,
    _i3.RouteTransitionsBuilder? transition,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #navigateTo,
          [routeName],
          {
            #arguments: arguments,
            #id: id,
            #preventDuplicates: preventDuplicates,
            #parameters: parameters,
            #transition: transition,
          },
        ),
        returnValueForMissingStub: null,
      ) as _i4.Future<T?>?);
  @override
  _i4.Future<T?>? navigateToView<T>(
    _i3.Widget? view, {
    dynamic arguments,
    int? id,
    bool? opaque,
    _i3.Curve? curve,
    Duration? duration,
    bool? fullscreenDialog = false,
    bool? popGesture,
    bool? preventDuplicates = true,
    _i2.Transition? transition,
    _i2.Transition? transitionStyle,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #navigateToView,
          [view],
          {
            #arguments: arguments,
            #id: id,
            #opaque: opaque,
            #curve: curve,
            #duration: duration,
            #fullscreenDialog: fullscreenDialog,
            #popGesture: popGesture,
            #preventDuplicates: preventDuplicates,
            #transition: transition,
            #transitionStyle: transitionStyle,
          },
        ),
        returnValueForMissingStub: null,
      ) as _i4.Future<T?>?);
  @override
  _i4.Future<T?>? replaceWith<T>(
    String? routeName, {
    dynamic arguments,
    int? id,
    bool? preventDuplicates = true,
    Map<String, String>? parameters,
    _i3.RouteTransitionsBuilder? transition,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #replaceWith,
          [routeName],
          {
            #arguments: arguments,
            #id: id,
            #preventDuplicates: preventDuplicates,
            #parameters: parameters,
            #transition: transition,
          },
        ),
        returnValueForMissingStub: null,
      ) as _i4.Future<T?>?);
  @override
  _i4.Future<T?>? clearStackAndShow<T>(
    String? routeName, {
    dynamic arguments,
    int? id,
    Map<String, String>? parameters,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #clearStackAndShow,
          [routeName],
          {
            #arguments: arguments,
            #id: id,
            #parameters: parameters,
          },
        ),
        returnValueForMissingStub: null,
      ) as _i4.Future<T?>?);
  @override
  _i4.Future<T?>? clearStackAndShowView<T>(
    _i3.Widget? view, {
    dynamic arguments,
    int? id,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #clearStackAndShowView,
          [view],
          {
            #arguments: arguments,
            #id: id,
          },
        ),
        returnValueForMissingStub: null,
      ) as _i4.Future<T?>?);
  @override
  _i4.Future<T?>? clearTillFirstAndShow<T>(
    String? routeName, {
    dynamic arguments,
    int? id,
    bool? preventDuplicates = true,
    Map<String, String>? parameters,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #clearTillFirstAndShow,
          [routeName],
          {
            #arguments: arguments,
            #id: id,
            #preventDuplicates: preventDuplicates,
            #parameters: parameters,
          },
        ),
        returnValueForMissingStub: null,
      ) as _i4.Future<T?>?);
  @override
  _i4.Future<T?>? clearTillFirstAndShowView<T>(
    _i3.Widget? view, {
    dynamic arguments,
    int? id,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #clearTillFirstAndShowView,
          [view],
          {
            #arguments: arguments,
            #id: id,
          },
        ),
        returnValueForMissingStub: null,
      ) as _i4.Future<T?>?);
  @override
  _i4.Future<T?>? pushNamedAndRemoveUntil<T>(
    String? routeName, {
    _i3.RoutePredicate? predicate,
    dynamic arguments,
    int? id,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #pushNamedAndRemoveUntil,
          [routeName],
          {
            #predicate: predicate,
            #arguments: arguments,
            #id: id,
          },
        ),
        returnValueForMissingStub: null,
      ) as _i4.Future<T?>?);
}

/// A class which mocks [BottomSheetService].
///
/// See the documentation for Mockito's code generation for more information.
class MockBottomSheetService extends _i1.Mock
    implements _i2.BottomSheetService {
  @override
  void setCustomSheetBuilders(Map<dynamic, _i2.SheetBuilder>? builders) =>
      super.noSuchMethod(
        Invocation.method(
          #setCustomSheetBuilders,
          [builders],
        ),
        returnValueForMissingStub: null,
      );
  @override
  _i4.Future<_i2.SheetResponse<dynamic>?> showBottomSheet({
    required String? title,
    String? description,
    String? confirmButtonTitle = r'Ok',
    String? cancelButtonTitle,
    bool? enableDrag = true,
    bool? barrierDismissible = true,
    bool? isScrollControlled = false,
    Duration? exitBottomSheetDuration,
    Duration? enterBottomSheetDuration,
    bool? ignoreSafeArea,
    bool? useRootNavigator = false,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #showBottomSheet,
          [],
          {
            #title: title,
            #description: description,
            #confirmButtonTitle: confirmButtonTitle,
            #cancelButtonTitle: cancelButtonTitle,
            #enableDrag: enableDrag,
            #barrierDismissible: barrierDismissible,
            #isScrollControlled: isScrollControlled,
            #exitBottomSheetDuration: exitBottomSheetDuration,
            #enterBottomSheetDuration: enterBottomSheetDuration,
            #ignoreSafeArea: ignoreSafeArea,
            #useRootNavigator: useRootNavigator,
          },
        ),
        returnValue: _i4.Future<_i2.SheetResponse<dynamic>?>.value(),
        returnValueForMissingStub:
            _i4.Future<_i2.SheetResponse<dynamic>?>.value(),
      ) as _i4.Future<_i2.SheetResponse<dynamic>?>);
  @override
  _i4.Future<_i2.SheetResponse<T>?> showCustomSheet<T, R>({
    dynamic variant,
    String? title,
    String? description,
    bool? hasImage = false,
    String? imageUrl,
    bool? showIconInMainButton = false,
    String? mainButtonTitle,
    bool? showIconInSecondaryButton = false,
    String? secondaryButtonTitle,
    bool? showIconInAdditionalButton = false,
    String? additionalButtonTitle,
    bool? takesInput = false,
    _i5.Color? barrierColor = const _i5.Color(2315255808),
    bool? barrierDismissible = true,
    bool? isScrollControlled = false,
    String? barrierLabel = r'',
    dynamic customData,
    R? data,
    bool? enableDrag = true,
    Duration? exitBottomSheetDuration,
    Duration? enterBottomSheetDuration,
    bool? ignoreSafeArea,
    bool? useRootNavigator = false,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #showCustomSheet,
          [],
          {
            #variant: variant,
            #title: title,
            #description: description,
            #hasImage: hasImage,
            #imageUrl: imageUrl,
            #showIconInMainButton: showIconInMainButton,
            #mainButtonTitle: mainButtonTitle,
            #showIconInSecondaryButton: showIconInSecondaryButton,
            #secondaryButtonTitle: secondaryButtonTitle,
            #showIconInAdditionalButton: showIconInAdditionalButton,
            #additionalButtonTitle: additionalButtonTitle,
            #takesInput: takesInput,
            #barrierColor: barrierColor,
            #barrierDismissible: barrierDismissible,
            #isScrollControlled: isScrollControlled,
            #barrierLabel: barrierLabel,
            #customData: customData,
            #data: data,
            #enableDrag: enableDrag,
            #exitBottomSheetDuration: exitBottomSheetDuration,
            #enterBottomSheetDuration: enterBottomSheetDuration,
            #ignoreSafeArea: ignoreSafeArea,
            #useRootNavigator: useRootNavigator,
          },
        ),
        returnValue: _i4.Future<_i2.SheetResponse<T>?>.value(),
        returnValueForMissingStub: _i4.Future<_i2.SheetResponse<T>?>.value(),
      ) as _i4.Future<_i2.SheetResponse<T>?>);
  @override
  void completeSheet(_i2.SheetResponse<dynamic>? response) =>
      super.noSuchMethod(
        Invocation.method(
          #completeSheet,
          [response],
        ),
        returnValueForMissingStub: null,
      );
}

/// A class which mocks [DialogService].
///
/// See the documentation for Mockito's code generation for more information.
class MockDialogService extends _i1.Mock implements _i2.DialogService {
  @override
  void registerCustomDialogBuilders(
          Map<dynamic, _i2.DialogBuilder>? builders) =>
      super.noSuchMethod(
        Invocation.method(
          #registerCustomDialogBuilders,
          [builders],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void registerCustomDialogBuilder({
    required dynamic variant,
    required _i3.Widget Function(
      _i3.BuildContext,
      _i2.DialogRequest<dynamic>,
      dynamic Function(_i2.DialogResponse<dynamic>),
    )? builder,
  }) =>
      super.noSuchMethod(
        Invocation.method(
          #registerCustomDialogBuilder,
          [],
          {
            #variant: variant,
            #builder: builder,
          },
        ),
        returnValueForMissingStub: null,
      );
  @override
  _i4.Future<_i2.DialogResponse<dynamic>?> showDialog({
    String? title,
    String? description,
    String? cancelTitle,
    _i5.Color? cancelTitleColor,
    String? buttonTitle = r'Ok',
    _i5.Color? buttonTitleColor,
    bool? barrierDismissible = false,
    _i2.DialogPlatform? dialogPlatform,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #showDialog,
          [],
          {
            #title: title,
            #description: description,
            #cancelTitle: cancelTitle,
            #cancelTitleColor: cancelTitleColor,
            #buttonTitle: buttonTitle,
            #buttonTitleColor: buttonTitleColor,
            #barrierDismissible: barrierDismissible,
            #dialogPlatform: dialogPlatform,
          },
        ),
        returnValue: _i4.Future<_i2.DialogResponse<dynamic>?>.value(),
        returnValueForMissingStub:
            _i4.Future<_i2.DialogResponse<dynamic>?>.value(),
      ) as _i4.Future<_i2.DialogResponse<dynamic>?>);
  @override
  _i4.Future<_i2.DialogResponse<T>?> showCustomDialog<T, R>({
    dynamic variant,
    String? title,
    String? description,
    bool? hasImage = false,
    String? imageUrl,
    bool? showIconInMainButton = false,
    String? mainButtonTitle,
    bool? showIconInSecondaryButton = false,
    String? secondaryButtonTitle,
    bool? showIconInAdditionalButton = false,
    String? additionalButtonTitle,
    bool? takesInput = false,
    _i5.Color? barrierColor = const _i5.Color(2315255808),
    bool? barrierDismissible = false,
    String? barrierLabel = r'',
    bool? useSafeArea = true,
    dynamic customData,
    R? data,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #showCustomDialog,
          [],
          {
            #variant: variant,
            #title: title,
            #description: description,
            #hasImage: hasImage,
            #imageUrl: imageUrl,
            #showIconInMainButton: showIconInMainButton,
            #mainButtonTitle: mainButtonTitle,
            #showIconInSecondaryButton: showIconInSecondaryButton,
            #secondaryButtonTitle: secondaryButtonTitle,
            #showIconInAdditionalButton: showIconInAdditionalButton,
            #additionalButtonTitle: additionalButtonTitle,
            #takesInput: takesInput,
            #barrierColor: barrierColor,
            #barrierDismissible: barrierDismissible,
            #barrierLabel: barrierLabel,
            #useSafeArea: useSafeArea,
            #customData: customData,
            #data: data,
          },
        ),
        returnValue: _i4.Future<_i2.DialogResponse<T>?>.value(),
        returnValueForMissingStub: _i4.Future<_i2.DialogResponse<T>?>.value(),
      ) as _i4.Future<_i2.DialogResponse<T>?>);
  @override
  _i4.Future<_i2.DialogResponse<dynamic>?> showConfirmationDialog({
    String? title,
    String? description,
    String? cancelTitle = r'Cancel',
    _i5.Color? cancelTitleColor,
    String? confirmationTitle = r'Ok',
    _i5.Color? confirmationTitleColor,
    bool? barrierDismissible = false,
    _i2.DialogPlatform? dialogPlatform,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #showConfirmationDialog,
          [],
          {
            #title: title,
            #description: description,
            #cancelTitle: cancelTitle,
            #cancelTitleColor: cancelTitleColor,
            #confirmationTitle: confirmationTitle,
            #confirmationTitleColor: confirmationTitleColor,
            #barrierDismissible: barrierDismissible,
            #dialogPlatform: dialogPlatform,
          },
        ),
        returnValue: _i4.Future<_i2.DialogResponse<dynamic>?>.value(),
        returnValueForMissingStub:
            _i4.Future<_i2.DialogResponse<dynamic>?>.value(),
      ) as _i4.Future<_i2.DialogResponse<dynamic>?>);
  @override
  void completeDialog(_i2.DialogResponse<dynamic>? response) =>
      super.noSuchMethod(
        Invocation.method(
          #completeDialog,
          [response],
        ),
        returnValueForMissingStub: null,
      );
}

/// A class which mocks [ToastmessageService].
///
/// See the documentation for Mockito's code generation for more information.
class MockToastmessageService extends _i1.Mock
    implements _i6.ToastmessageService {
  @override
  void toastmessage(String? message) => super.noSuchMethod(
        Invocation.method(
          #toastmessage,
          [message],
        ),
        returnValueForMissingStub: null,
      );
}

/// A class which mocks [TitlePageService].
///
/// See the documentation for Mockito's code generation for more information.
class MockTitlePageService extends _i1.Mock implements _i7.TitlePageService {
  @override
  _i4.Future<void> uploadDescription(
    _i8.DescriptionViewModel? viewModel,
    String? id,
    dynamic titlectrl,
    dynamic descCtrl,
    dynamic aboutctrl,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #uploadDescription,
          [
            viewModel,
            id,
            titlectrl,
            descCtrl,
            aboutctrl,
          ],
        ),
        returnValue: _i4.Future<void>.value(),
        returnValueForMissingStub: _i4.Future<void>.value(),
      ) as _i4.Future<void>);
}

/// A class which mocks [SkillPageService].
///
/// See the documentation for Mockito's code generation for more information.
class MockSkillPageService extends _i1.Mock implements _i9.SkillPageService {
  @override
  _i4.Future<void> uploadDataFirestore(
    String? id,
    dynamic skillctrl,
    dynamic slideValue,
    dynamic viewModel,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #uploadDataFirestore,
          [
            id,
            skillctrl,
            slideValue,
            viewModel,
          ],
        ),
        returnValue: _i4.Future<void>.value(),
        returnValueForMissingStub: _i4.Future<void>.value(),
      ) as _i4.Future<void>);
}

/// A class which mocks [ProjectService].
///
/// See the documentation for Mockito's code generation for more information.
class MockProjectService extends _i1.Mock implements _i10.ProjectService {
  @override
  _i4.Future<void> uploadProject(
    dynamic viewModel,
    String? id,
    dynamic titlectrl,
    dynamic descCtrl,
    dynamic datectrl,
    dynamic linkctrl,
    dynamic gitctrl,
    dynamic youtubectrl,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #uploadProject,
          [
            viewModel,
            id,
            titlectrl,
            descCtrl,
            datectrl,
            linkctrl,
            gitctrl,
            youtubectrl,
          ],
        ),
        returnValue: _i4.Future<void>.value(),
        returnValueForMissingStub: _i4.Future<void>.value(),
      ) as _i4.Future<void>);
}

/// A class which mocks [AddCertificateService].
///
/// See the documentation for Mockito's code generation for more information.
class MockAddCertificateService extends _i1.Mock
    implements _i11.AddCertificateService {
  @override
  _i4.Future<void> uploadCertificate(
    _i12.ADDcertificateViewModel? viewModel,
    String? id,
    dynamic titlectrl,
    dynamic descCtrl,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #uploadCertificate,
          [
            viewModel,
            id,
            titlectrl,
            descCtrl,
          ],
        ),
        returnValue: _i4.Future<void>.value(),
        returnValueForMissingStub: _i4.Future<void>.value(),
      ) as _i4.Future<void>);
}

/// A class which mocks [ContactService].
///
/// See the documentation for Mockito's code generation for more information.
class MockContactService extends _i1.Mock implements _i13.ContactService {
  @override
  _i4.Future<void> contact(
    _i14.ContactViewModel? viewModel,
    String? id,
    dynamic emailctrl,
    dynamic facebookCtrl,
    dynamic linkdinctrl,
    dynamic githubctrl,
    dynamic contactctrl,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #contact,
          [
            viewModel,
            id,
            emailctrl,
            facebookCtrl,
            linkdinctrl,
            githubctrl,
            contactctrl,
          ],
        ),
        returnValue: _i4.Future<void>.value(),
        returnValueForMissingStub: _i4.Future<void>.value(),
      ) as _i4.Future<void>);
}
