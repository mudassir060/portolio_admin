import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class SkillViewModel extends BaseViewModel {
  bool isVisible = false;
  late AnimationController animationController;

  visiblestate(visibilityInfo) {
    isVisible = visibilityInfo.visibleFraction > 0.5;
    if (isVisible) {
      animationController.forward();
    } else {
      animationController.reverse();
    }
    notifyListeners();
  }
}
