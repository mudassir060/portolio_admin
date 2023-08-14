
import 'package:flutter/material.dart';

import '../../../common/app_colors.dart';

Widget achiv(String name) {
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
          image: NetworkImage(name),
          fit: BoxFit.fill,
        ),
      ),
      Positioned(
        left: 300,
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
  );
}
