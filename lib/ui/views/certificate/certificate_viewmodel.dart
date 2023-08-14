import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';
import 'Widget/pdfwidget.dart';

class CertificateViewModel extends BaseViewModel {
   final navigationService = locator<NavigationService>();
     void navigateToPDFScreen(BuildContext context, String cerName) {

      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => PDFScreen(pdfAssetPath: cerName),
        ),
      );

    }
}
