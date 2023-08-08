import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:visibility_detector/visibility_detector.dart';

import '../../common/app_colors.dart';
import 'skill_viewmodel.dart';

class SkillView extends StatelessWidget {
  const SkillView({
    Key? key,
    this.percentage,
    this.label,
  }) : super(key: key);
  final double? percentage; // Make it nullable
  final String? label;
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SkillViewModel>.reactive(
      viewModelBuilder: () => SkillViewModel(),
      builder: (context, viewModel, child) {
        return Skillview(
          percentage: percentage,
          label: label,
        );
      },
    );
  }
}

class Skillview extends StatefulWidget {
  const Skillview({
    Key? key,
    this.percentage,
    this.label,
  }) : super(key: key);

  final double? percentage; // Make it nullable
  final String? label; // Make it nullable

  @override
  State<Skillview> createState() => _SkillviewState();
}

class _SkillviewState extends State<Skillview>
    with SingleTickerProviderStateMixin {
  late SkillViewModel viewModel;

  @override
  void initState() {
    super.initState();
    viewModel = SkillViewModel();
    viewModel.animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    );
  }

  @override
  void dispose() {
    viewModel.animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        VisibilityDetector(
          key: Key(widget.label ?? ''),
          onVisibilityChanged: (visibilityInfo) {
            setState(() {
              viewModel.isVisible = visibilityInfo.visibleFraction > 0.5;
              if (viewModel.isVisible) {
                viewModel.animationController.forward();
              } else {
                viewModel.animationController.reverse();
              }
            });
          },
          child: SizedBox(
            width: 400,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.label ?? '',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                    const Spacer(),
                    Text('${(widget.percentage ?? 0.0) * 100}%'),
                    PopupMenuButton<int>(
                      icon: const Icon(Icons.more_vert),
                      itemBuilder: (context) => [
                        const PopupMenuItem<int>(
                          value: 1,
                          child: ListTile(
                            title: Text("Edit"),
                            leading: Icon(Icons.edit),
                          ),
                        ),
                        const PopupMenuItem<int>(
                          value: 2,
                          child: ListTile(
                            title: Text("Delete"),
                            leading: Icon(Icons.delete_outline),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                AnimatedBuilder(
                  animation: viewModel.animationController,
                  builder: (context, child) {
                    final value = viewModel.isVisible
                        ? viewModel.animationController.value *
                            (widget.percentage ?? 0.0)
                        : 0.0;
                    return SizedBox(
                      height: 6,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: LinearProgressIndicator(
                          value: value,
                          color: kcdarkPrimaryColor,
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
