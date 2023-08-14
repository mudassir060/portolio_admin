import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portolio_admin/ui/bottom_sheets/notice/images.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';
import 'Widget/pdfwidget.dart';

class CertificateViewModel extends BaseViewModel {
  final navigationService = locator<NavigationService>();
  final List certificatedata = [
    certificate1,
    certificate2,
    certificate3,
    certificate4,
    certificate5
  ];
  final List imagedata = [kic, ite, comp, char, arsh];
  final certificatestream =
      FirebaseFirestore.instance.collection("Certificate").snapshots();

  void navigateToPDFScreen(BuildContext context, String cerName) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => PDFScreen(pdfAssetPath: cerName),
      ),
    );
  }
}
