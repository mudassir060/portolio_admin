import 'package:flutter/material.dart';
import 'package:portolio_admin/app/app.router.dart';
import 'package:stacked/stacked.dart';

import 'projects_viewmodel.dart';

class ProjectsView extends StackedView<ProjectsViewModel> {
  final String image1;
  final int index;
  final String? title;
  final String? description;
  final String? date;
  final String? applink;
  final String? gitlink;
  final String? youtubelink;
  final String? id;

  const ProjectsView(
      {super.key,
      required this.image1,
      required this.index,
      required this.title,
      required this.description,
      required this.date,
      required this.applink,
      required this.gitlink,
      required this.youtubelink,
      required this.id});

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
                onSelected: (value) {
                  if (value == 1) {
                    viewModel.setindex(index);
                    viewModel.navigationService.navigateToEditprojectView(
                        firestoreimage: image1,
                        title: title,
                        description: description,
                        date: date,
                        applink: applink,
                        gitlink: gitlink,
                        youtubelink: youtubelink,
                        id: id,
                        index:index
                        );
                  }
                },
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
