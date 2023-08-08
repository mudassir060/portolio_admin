import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PDFScreen extends StatelessWidget {
  final String pdfAssetPath;
 
  const PDFScreen({Key? key, required this.pdfAssetPath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SfPdfViewer.asset(pdfAssetPath);
  }
}

void navigateToPDFScreen(BuildContext context, String cerName) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => PDFScreen(pdfAssetPath: cerName),
    ),
  );
}