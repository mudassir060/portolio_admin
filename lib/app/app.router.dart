// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedNavigatorGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/material.dart' as _i15;
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
import 'package:stacked_services/stacked_services.dart' as _i16;

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
  ];

  final _pagesMap = <Type, _i1.StackedRouteFactory>{
    _i2.HomeView: (data) {
      return _i15.MaterialPageRoute<dynamic>(
        builder: (context) => const _i2.HomeView(),
        settings: data,
      );
    },
    _i3.StartupView: (data) {
      return _i15.MaterialPageRoute<dynamic>(
        builder: (context) => const _i3.StartupView(),
        settings: data,
      );
    },
    _i4.DescriptionView: (data) {
      return _i15.MaterialPageRoute<dynamic>(
        builder: (context) => const _i4.DescriptionView(),
        settings: data,
      );
    },
    _i5.SkillView: (data) {
      final args = data.getArgs<SkillViewArguments>(
        orElse: () => const SkillViewArguments(),
      );
      return _i15.MaterialPageRoute<dynamic>(
        builder: (context) => _i5.SkillView(
            key: args.key, percentage: args.percentage, label: args.label),
        settings: data,
      );
    },
    _i6.ShowSkillsView: (data) {
      return _i15.MaterialPageRoute<dynamic>(
        builder: (context) => const _i6.ShowSkillsView(),
        settings: data,
      );
    },
    _i7.ProjectsView: (data) {
      final args = data.getArgs<ProjectsViewArguments>(nullOk: false);
      return _i15.MaterialPageRoute<dynamic>(
        builder: (context) =>
            _i7.ProjectsView(key: args.key, image1: args.image1),
        settings: data,
      );
    },
    _i8.ShowProjectsView: (data) {
      return _i15.MaterialPageRoute<dynamic>(
        builder: (context) => const _i8.ShowProjectsView(),
        settings: data,
      );
    },
    _i9.AddProjectsView: (data) {
      return _i15.MaterialPageRoute<dynamic>(
        builder: (context) => const _i9.AddProjectsView(),
        settings: data,
      );
    },
    _i10.CertificateView: (data) {
      return _i15.MaterialPageRoute<dynamic>(
        builder: (context) => const _i10.CertificateView(),
        settings: data,
      );
    },
    _i11.ShowcertificateView: (data) {
      return _i15.MaterialPageRoute<dynamic>(
        builder: (context) => const _i11.ShowcertificateView(),
        settings: data,
      );
    },
    _i12.ADDcertificateView: (data) {
      return _i15.MaterialPageRoute<dynamic>(
        builder: (context) => const _i12.ADDcertificateView(),
        settings: data,
      );
    },
    _i13.ContactView: (data) {
      final args = data.getArgs<ContactViewArguments>(
        orElse: () => const ContactViewArguments(),
      );
      return _i15.MaterialPageRoute<dynamic>(
        builder: (context) => _i13.ContactView(key: args.key, data: args.data),
        settings: data,
      );
    },
    _i14.AddSkillsView: (data) {
      return _i15.MaterialPageRoute<dynamic>(
        builder: (context) => const _i14.AddSkillsView(),
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
  });

  final _i15.Key? key;

  final double? percentage;

  final String? label;

  @override
  String toString() {
    return '{"key": "$key", "percentage": "$percentage", "label": "$label"}';
  }

  @override
  bool operator ==(covariant SkillViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key &&
        other.percentage == percentage &&
        other.label == label;
  }

  @override
  int get hashCode {
    return key.hashCode ^ percentage.hashCode ^ label.hashCode;
  }
}

class ProjectsViewArguments {
  const ProjectsViewArguments({
    this.key,
    required this.image1,
  });

  final _i15.Key? key;

  final String image1;

  @override
  String toString() {
    return '{"key": "$key", "image1": "$image1"}';
  }

  @override
  bool operator ==(covariant ProjectsViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key && other.image1 == image1;
  }

  @override
  int get hashCode {
    return key.hashCode ^ image1.hashCode;
  }
}

class ContactViewArguments {
  const ContactViewArguments({
    this.key,
    this.data,
  });

  final _i15.Key? key;

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

extension NavigatorStateExtension on _i16.NavigationService {
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
    _i15.Key? key,
    double? percentage,
    String? label,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.skillView,
        arguments:
            SkillViewArguments(key: key, percentage: percentage, label: label),
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
    _i15.Key? key,
    required String image1,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.projectsView,
        arguments: ProjectsViewArguments(key: key, image1: image1),
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
    _i15.Key? key,
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
    _i15.Key? key,
    double? percentage,
    String? label,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.skillView,
        arguments:
            SkillViewArguments(key: key, percentage: percentage, label: label),
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
    _i15.Key? key,
    required String image1,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.projectsView,
        arguments: ProjectsViewArguments(key: key, image1: image1),
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
    _i15.Key? key,
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
}
