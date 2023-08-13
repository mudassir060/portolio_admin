import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'projects_viewmodel.dart';

class ProjectsView extends StackedView<ProjectsViewModel> {
  final String image1;

  const ProjectsView({super.key, required this.image1});

  @override
  Widget builder(
    BuildContext context,
    ProjectsViewModel viewModel,
    Widget? child,
  ) {
    return Column(
      children: [
        Center(
          child: Stack(children: [
            Container(
              height: 300,
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image(
                image: NetworkImage(image1),
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              left: 330,
              child: PopupMenuButton<int>(
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
            ),
          ]),
        ),
      ],
    );
  }

  @override
  ProjectsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ProjectsViewModel();
}
