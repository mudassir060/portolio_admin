import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';

class SkillViewModel extends BaseViewModel {
  final navigationService = locator<NavigationService>();
  bool isVisible = false;
  late AnimationController animationController;
  int selected_index = -1;
  CollectionReference ref = FirebaseFirestore.instance.collection("Skills");

  visiblestate(visibilityInfo) {
    isVisible = visibilityInfo.visibleFraction > 0.5;
    if (isVisible) {
      animationController.forward();
    } else {
      animationController.reverse();
    }
    notifyListeners();
  }

  void setindex(index) {
    selected_index = index;
    notifyListeners();
  }
}
