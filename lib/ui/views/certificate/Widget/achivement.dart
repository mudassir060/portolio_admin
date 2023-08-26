import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:portolio_admin/app/app.router.dart';

import '../../../common/app_colors.dart';
import '../../projects/projects_viewmodel.dart';
import '../certificate_viewmodel.dart';

Widget achiv(String certname, String pdf, String description, String title,
    int index, String id) {
  CertificateViewModel viewModel = CertificateViewModel();
  return Center(
    child: Stack(children: [
      Container(
        height: 200,
        width: 350,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: kcDarkGreyColor,
        ),
        child: Image(
          image: NetworkImage(certname),
          fit: BoxFit.fill,
        ),
      ),
      Positioned(
        left: 300,
        child: PopupMenuButton<int>(
          onSelected: (value) {
            if (value == 1) {
              viewModel.setindex(index);
              viewModel.navigationService.navigateToEditCertificateView(
                  certname: certname,
                  pdf: pdf,
                  description: description,
                  title: title,
                  index: index,
                  id: id);
            }
            if (value == 2) {
              viewModel.setindex(index);
              viewModel.cref.doc(id).delete();
                 
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
  );
}
