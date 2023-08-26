// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedNavigatorGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/material.dart' as _i18;
import 'package:flutter/material.dart';
import 'package:portolio_admin/ui/views/add_certificate/add_certificate_view.dart'
    as _i12;
import 'package:portolio_admin/ui/views/add_projects/add_projects_view.dart'
    as _i9;
import 'package:portolio_admin/ui/views/add_skills/add_skills_view.dart'
    as _i14;
import 'package:portolio_admin/ui/views/certificate/certificate_view.dart'
    as _i10;
import 'package:portolio_admin/ui/views/contact/contact_view.dart' as _i13;
import 'package:portolio_admin/ui/views/description/description_view.dart'
    as _i4;
import 'package:portolio_admin/ui/views/edit_certificate/edit_certificate_view.dart'
    as _i17;
import 'package:portolio_admin/ui/views/editproject/editproject_view.dart'
    as _i16;
import 'package:portolio_admin/ui/views/editskill/editskill_view.dart' as _i15;
import 'package:portolio_admin/ui/views/home/home_view.dart' as _i2;
import 'package:portolio_admin/ui/views/projects/projects_view.dart' as _i7;
import 'package:portolio_admin/ui/views/show_projects/show_projects_view.dart'
    as _i8;
import 'package:portolio_admin/ui/views/show_skills/show_skills_view.dart'
    as _i6;
import 'package:portolio_admin/ui/views/showcertificate/showcertificate_view.dart'
    as _i11;
import 'package:portolio_admin/ui/views/skill/skill_view.dart' as _i5;
import 'package:portolio_admin/ui/views/startup/startup_view.dart' as _i3;
import 'package:stacked/stacked.dart' as _i1;
import 'package:stacked_services/stacked_services.dart' as _i19;

class Routes {
  static const homeView = '/home-view';

  static const startupView = '/startup-view';

  static const descriptionView = '/description-view';

  static const skillView = '/skill-view';

  static const showSkillsView = '/show-skills-view';

  static const projectsView = '/projects-view';

  static const showProjectsView = '/show-projects-view';

  static const addProjectsView = '/add-projects-view';

  static const certificateView = '/certificate-view';

  static const showcertificateView = '/showcertificate-view';

  static const aDDcertificateView = '/a-ddcertificate-view';

  static const contactView = '/contact-view';

  static const addSkillsView = '/add-skills-view';

  static const editskillView = '/editskill-view';

  static const editprojectView = '/editproject-view';

  static const editCertificateView = '/edit-certificate-view';

  static const all = <String>{
    homeView,
    startupView,
    descriptionView,
    skillView,
    showSkillsView,
    projectsView,
    showProjectsView,
    addProjectsView,
    certificateView,
    showcertificateView,
    aDDcertificateView,
    contactView,
    addSkillsView,
    editskillView,
    editprojectView,
    editCertificateView,
  };
}

class StackedRouter extends _i1.RouterBase {
  final _routes = <_i1.RouteDef>[
    _i1.RouteDef(
      Routes.homeView,
      page: _i2.HomeView,
    ),
    _i1.RouteDef(
      Routes.startupView,
      page: _i3.StartupView,
    ),
    _i1.RouteDef(
      Routes.descriptionView,
      page: _i4.DescriptionView,
    ),
    _i1.RouteDef(
      Routes.skillView,
      page: _i5.SkillView,
    ),
    _i1.RouteDef(
      Routes.showSkillsView,
      page: _i6.ShowSkillsView,
    ),
    _i1.RouteDef(
      Routes.projectsView,
      page: _i7.ProjectsView,
    ),
    _i1.RouteDef(
      Routes.showProjectsView,
      page: _i8.ShowProjectsView,
    ),
    _i1.RouteDef(
      Routes.addProjectsView,
      page: _i9.AddProjectsView,
    ),
    _i1.RouteDef(
      Routes.certificateView,
      page: _i10.CertificateView,
    ),
    _i1.RouteDef(
      Routes.showcertificateView,
      page: _i11.ShowcertificateView,
    ),
    _i1.RouteDef(
      Routes.aDDcertificateView,
      page: _i12.ADDcertificateView,
    ),
    _i1.RouteDef(
      Routes.contactView,
      page: _i13.ContactView,
    ),
    _i1.RouteDef(
      Routes.addSkillsView,
      page: _i14.AddSkillsView,
    ),
    _i1.RouteDef(
      Routes.editskillView,
      page: _i15.EditskillView,
    ),
    _i1.RouteDef(
      Routes.editprojectView,
      page: _i16.EditprojectView,
    ),
    _i1.RouteDef(
      Routes.editCertificateView,
      page: _i17.EditCertificateView,
    ),
  ];

  final _pagesMap = <Type, _i1.StackedRouteFactory>{
    _i2.HomeView: (data) {
      return _i18.MaterialPageRoute<dynamic>(
        builder: (context) => const _i2.HomeView(),
        settings: data,
      );
    },
    _i3.StartupView: (data) {
      return _i18.MaterialPageRoute<dynamic>(
        builder: (context) => const _i3.StartupView(),
        settings: data,
      );
    },
    _i4.DescriptionView: (data) {
      return _i18.MaterialPageRoute<dynamic>(
        builder: (context) => const _i4.DescriptionView(),
        settings: data,
      );
    },
    _i5.SkillView: (data) {
      final args = data.getArgs<SkillViewArguments>(nullOk: false);
      return _i18.MaterialPageRoute<dynamic>(
        builder: (context) => _i5.SkillView(
            key: args.key,
            percentage: args.percentage,
            label: args.label,
            index: args.index,
            idvalue: args.idvalue),
        settings: data,
      );
    },
    _i6.ShowSkillsView: (data) {
      return _i18.MaterialPageRoute<dynamic>(
        builder: (context) => const _i6.ShowSkillsView(),
        settings: data,
      );
    },
    _i7.ProjectsView: (data) {
      final args = data.getArgs<ProjectsViewArguments>(nullOk: false);
      return _i18.MaterialPageRoute<dynamic>(
        builder: (context) => _i7.ProjectsView(
            key: args.key,
            image1: args.image1,
            index: args.index,
            title: args.title,
            description: args.description,
            date: args.date,
            applink: args.applink,
            gitlink: args.gitlink,
            youtubelink: args.youtubelink,
            id: args.id),
        settings: data,
      );
    },
    _i8.ShowProjectsView: (data) {
      return _i18.MaterialPageRoute<dynamic>(
        builder: (context) => const _i8.ShowProjectsView(),
        settings: data,
      );
    },
    _i9.AddProjectsView: (data) {
      return _i18.MaterialPageRoute<dynamic>(
        builder: (context) => const _i9.AddProjectsView(),
        settings: data,
      );
    },
    _i10.CertificateView: (data) {
      return _i18.MaterialPageRoute<dynamic>(
        builder: (context) => const _i10.CertificateView(),
        settings: data,
      );
    },
    _i11.ShowcertificateView: (data) {
      return _i18.MaterialPageRoute<dynamic>(
        builder: (context) => const _i11.ShowcertificateView(),
        settings: data,
      );
    },
    _i12.ADDcertificateView: (data) {
      return _i18.MaterialPageRoute<dynamic>(
        builder: (context) => const _i12.ADDcertificateView(),
        settings: data,
      );
    },
    _i13.ContactView: (data) {
      final args = data.getArgs<ContactViewArguments>(
        orElse: () => const ContactViewArguments(),
      );
      return _i18.MaterialPageRoute<dynamic>(
        builder: (context) => _i13.ContactView(key: args.key, data: args.data),
        settings: data,
      );
    },
    _i14.AddSkillsView: (data) {
      return _i18.MaterialPageRoute<dynamic>(
        builder: (context) => const _i14.AddSkillsView(),
        settings: data,
      );
    },
    _i15.EditskillView: (data) {
      final args = data.getArgs<EditskillViewArguments>(nullOk: false);
      return _i18.MaterialPageRoute<dynamic>(
        builder: (context) => _i15.EditskillView(
            key: args.key,
            title: args.title,
            slidervalue: args.slidervalue,
            id: args.id,
            selectedindex: args.selectedindex),
        settings: data,
      );
    },
    _i16.EditprojectView: (data) {
      final args = data.getArgs<EditprojectViewArguments>(nullOk: false);
      return _i18.MaterialPageRoute<dynamic>(
        builder: (context) => _i16.EditprojectView(
            key: args.key,
            firestoreimage: args.firestoreimage,
            title: args.title,
            description: args.description,
            date: args.date,
            applink: args.applink,
            gitlink: args.gitlink,
            youtubelink: args.youtubelink,
            id: args.id,
            index: args.index),
        settings: data,
      );
    },
    _i17.EditCertificateView: (data) {
      final args = data.getArgs<EditCertificateViewArguments>(nullOk: false);
      return _i18.MaterialPageRoute<dynamic>(
        builder: (context) => _i17.EditCertificateView(
            key: args.key,
            certname: args.certname,
            pdf: args.pdf,
            description: args.description,
            title: args.title,
            index: args.index,
            id: args.id),
        settings: data,
      );
    },
  };

  @override
  List<_i1.RouteDef> get routes => _routes;
  @override
  Map<Type, _i1.StackedRouteFactory> get pagesMap => _pagesMap;
}

class SkillViewArguments {
  const SkillViewArguments({
    this.key,
    this.percentage,
    this.label,
    required this.index,
    required this.idvalue,
  });

  final _i18.Key? key;

  final double? percentage;

  final String? label;

  final int index;

  final String? idvalue;

  @override
  String toString() {
    return '{"key": "$key", "percentage": "$percentage", "label": "$label", "index": "$index", "idvalue": "$idvalue"}';
  }

  @override
  bool operator ==(covariant SkillViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key &&
        other.percentage == percentage &&
        other.label == label &&
        other.index == index &&
        other.idvalue == idvalue;
  }

  @override
  int get hashCode {
    return key.hashCode ^
        percentage.hashCode ^
        label.hashCode ^
        index.hashCode ^
        idvalue.hashCode;
  }
}

class ProjectsViewArguments {
  const ProjectsViewArguments({
    this.key,
    required this.image1,
    required this.index,
    required this.title,
    required this.description,
    required this.date,
    required this.applink,
    required this.gitlink,
    required this.youtubelink,
    required this.id,
  });

  final _i18.Key? key;

  final String image1;

  final int index;

  final String? title;

  final String? description;

  final String? date;

  final String? applink;

  final String? gitlink;

  final String? youtubelink;

  final String id;

  @override
  String toString() {
    return '{"key": "$key", "image1": "$image1", "index": "$index", "title": "$title", "description": "$description", "date": "$date", "applink": "$applink", "gitlink": "$gitlink", "youtubelink": "$youtubelink", "id": "$id"}';
  }

  @override
  bool operator ==(covariant ProjectsViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key &&
        other.image1 == image1 &&
        other.index == index &&
        other.title == title &&
        other.description == description &&
        other.date == date &&
        other.applink == applink &&
        other.gitlink == gitlink &&
        other.youtubelink == youtubelink &&
        other.id == id;
  }

  @override
  int get hashCode {
    return key.hashCode ^
        image1.hashCode ^
        index.hashCode ^
        title.hashCode ^
        description.hashCode ^
        date.hashCode ^
        applink.hashCode ^
        gitlink.hashCode ^
        youtubelink.hashCode ^
        id.hashCode;
  }
}

class ContactViewArguments {
  const ContactViewArguments({
    this.key,
    this.data,
  });

  final _i18.Key? key;

  final dynamic data;

  @override
  String toString() {
    return '{"key": "$key", "data": "$data"}';
  }

  @override
  bool operator ==(covariant ContactViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key && other.data == data;
  }

  @override
  int get hashCode {
    return key.hashCode ^ data.hashCode;
  }
}

class EditskillViewArguments {
  const EditskillViewArguments({
    this.key,
    required this.title,
    required this.slidervalue,
    required this.id,
    required this.selectedindex,
  });

  final _i18.Key? key;

  final String title;

  final double slidervalue;

  final String id;

  final int selectedindex;

  @override
  String toString() {
    return '{"key": "$key", "title": "$title", "slidervalue": "$slidervalue", "id": "$id", "selectedindex": "$selectedindex"}';
  }

  @override
  bool operator ==(covariant EditskillViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key &&
        other.title == title &&
        other.slidervalue == slidervalue &&
        other.id == id &&
        other.selectedindex == selectedindex;
  }

  @override
  int get hashCode {
    return key.hashCode ^
        title.hashCode ^
        slidervalue.hashCode ^
        id.hashCode ^
        selectedindex.hashCode;
  }
}

class EditprojectViewArguments {
  const EditprojectViewArguments({
    this.key,
    required this.firestoreimage,
    required this.title,
    required this.description,
    required this.date,
    required this.applink,
    required this.gitlink,
    required this.youtubelink,
    required this.id,
    required this.index,
  });

  final _i18.Key? key;

  final String? firestoreimage;

  final String? title;

  final String? description;

  final String? date;

  final String? applink;

  final String? gitlink;

  final String? youtubelink;

  final String id;

  final int index;

  @override
  String toString() {
    return '{"key": "$key", "firestoreimage": "$firestoreimage", "title": "$title", "description": "$description", "date": "$date", "applink": "$applink", "gitlink": "$gitlink", "youtubelink": "$youtubelink", "id": "$id", "index": "$index"}';
  }

  @override
  bool operator ==(covariant EditprojectViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key &&
        other.firestoreimage == firestoreimage &&
        other.title == title &&
        other.description == description &&
        other.date == date &&
        other.applink == applink &&
        other.gitlink == gitlink &&
        other.youtubelink == youtubelink &&
        other.id == id &&
        other.index == index;
  }

  @override
  int get hashCode {
    return key.hashCode ^
        firestoreimage.hashCode ^
        title.hashCode ^
        description.hashCode ^
        date.hashCode ^
        applink.hashCode ^
        gitlink.hashCode ^
        youtubelink.hashCode ^
        id.hashCode ^
        index.hashCode;
  }
}

class EditCertificateViewArguments {
  const EditCertificateViewArguments({
    this.key,
    required this.certname,
    required this.pdf,
    required this.description,
    required this.title,
    required this.index,
    required this.id,
  });

  final _i18.Key? key;

  final String? certname;

  final String? pdf;

  final String? description;

  final String? title;

  final int index;

  final String id;

  @override
  String toString() {
    return '{"key": "$key", "certname": "$certname", "pdf": "$pdf", "description": "$description", "title": "$title", "index": "$index", "id": "$id"}';
  }

  @override
  bool operator ==(covariant EditCertificateViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key &&
        other.certname == certname &&
        other.pdf == pdf &&
        other.description == description &&
        other.title == title &&
        other.index == index &&
        other.id == id;
  }

  @override
  int get hashCode {
    return key.hashCode ^
        certname.hashCode ^
        pdf.hashCode ^
        description.hashCode ^
        title.hashCode ^
        index.hashCode ^
        id.hashCode;
  }
}

extension NavigatorStateExtension on _i19.NavigationService {
  Future<dynamic> navigateToHomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.homeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToStartupView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.startupView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToDescriptionView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.descriptionView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToSkillView({
    _i18.Key? key,
    double? percentage,
    String? label,
    required int index,
    required String? idvalue,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.skillView,
        arguments: SkillViewArguments(
            key: key,
            percentage: percentage,
            label: label,
            index: index,
            idvalue: idvalue),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToShowSkillsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.showSkillsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToProjectsView({
    _i18.Key? key,
    required String image1,
    required int index,
    required String? title,
    required String? description,
    required String? date,
    required String? applink,
    required String? gitlink,
    required String? youtubelink,
    required String id,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.projectsView,
        arguments: ProjectsViewArguments(
            key: key,
            image1: image1,
            index: index,
            title: title,
            description: description,
            date: date,
            applink: applink,
            gitlink: gitlink,
            youtubelink: youtubelink,
            id: id),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToShowProjectsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.showProjectsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToAddProjectsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.addProjectsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToCertificateView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.certificateView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToShowcertificateView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.showcertificateView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToADDcertificateView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.aDDcertificateView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToContactView({
    _i18.Key? key,
    dynamic data,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.contactView,
        arguments: ContactViewArguments(key: key, data: data),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToAddSkillsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.addSkillsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToEditskillView({
    _i18.Key? key,
    required String title,
    required double slidervalue,
    required String id,
    required int selectedindex,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.editskillView,
        arguments: EditskillViewArguments(
            key: key,
            title: title,
            slidervalue: slidervalue,
            id: id,
            selectedindex: selectedindex),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToEditprojectView({
    _i18.Key? key,
    required String? firestoreimage,
    required String? title,
    required String? description,
    required String? date,
    required String? applink,
    required String? gitlink,
    required String? youtubelink,
    required String id,
    required int index,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.editprojectView,
        arguments: EditprojectViewArguments(
            key: key,
            firestoreimage: firestoreimage,
            title: title,
            description: description,
            date: date,
            applink: applink,
            gitlink: gitlink,
            youtubelink: youtubelink,
            id: id,
            index: index),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToEditCertificateView({
    _i18.Key? key,
    required String? certname,
    required String? pdf,
    required String? description,
    required String? title,
    required int index,
    required String id,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.editCertificateView,
        arguments: EditCertificateViewArguments(
            key: key,
            certname: certname,
            pdf: pdf,
            description: description,
            title: title,
            index: index,
            id: id),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithHomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.homeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithStartupView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.startupView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithDescriptionView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.descriptionView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithSkillView({
    _i18.Key? key,
    double? percentage,
    String? label,
    required int index,
    required String? idvalue,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.skillView,
        arguments: SkillViewArguments(
            key: key,
            percentage: percentage,
            label: label,
            index: index,
            idvalue: idvalue),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithShowSkillsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.showSkillsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithProjectsView({
    _i18.Key? key,
    required String image1,
    required int index,
    required String? title,
    required String? description,
    required String? date,
    required String? applink,
    required String? gitlink,
    required String? youtubelink,
    required String id,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.projectsView,
        arguments: ProjectsViewArguments(
            key: key,
            image1: image1,
            index: index,
            title: title,
            description: description,
            date: date,
            applink: applink,
            gitlink: gitlink,
            youtubelink: youtubelink,
            id: id),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithShowProjectsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.showProjectsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithAddProjectsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.addProjectsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithCertificateView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.certificateView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithShowcertificateView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.showcertificateView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithADDcertificateView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.aDDcertificateView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithContactView({
    _i18.Key? key,
    dynamic data,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.contactView,
        arguments: ContactViewArguments(key: key, data: data),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithAddSkillsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.addSkillsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithEditskillView({
    _i18.Key? key,
    required String title,
    required double slidervalue,
    required String id,
    required int selectedindex,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.editskillView,
        arguments: EditskillViewArguments(
            key: key,
            title: title,
            slidervalue: slidervalue,
            id: id,
            selectedindex: selectedindex),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithEditprojectView({
    _i18.Key? key,
    required String? firestoreimage,
    required String? title,
    required String? description,
    required String? date,
    required String? applink,
    required String? gitlink,
    required String? youtubelink,
    required String id,
    required int index,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.editprojectView,
        arguments: EditprojectViewArguments(
            key: key,
            firestoreimage: firestoreimage,
            title: title,
            description: description,
            date: date,
            applink: applink,
            gitlink: gitlink,
            youtubelink: youtubelink,
            id: id,
            index: index),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithEditCertificateView({
    _i18.Key? key,
    required String? certname,
    required String? pdf,
    required String? description,
    required String? title,
    required int index,
    required String id,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.editCertificateView,
        arguments: EditCertificateViewArguments(
            key: key,
            certname: certname,
            pdf: pdf,
            description: description,
            title: title,
            index: index,
            id: id),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }
}
