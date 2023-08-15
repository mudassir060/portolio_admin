import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:http/http.dart' as http;

class PDFScreen extends StatelessWidget {
  final String pdfAssetPath;

  const PDFScreen({Key? key, required this.pdfAssetPath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _loadPdf(pdfAssetPath),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        } else if (snapshot.hasError) {
          return Text('Error loading PDF: ${snapshot.error}');
        } else if (snapshot.hasData) {
          final pdfData = Uint8List.fromList(snapshot.data!);
          return SfPdfViewer.memory(pdfData);
        } else {
          return const Text('No PDF data available.');
        }
      },
    );
  }

  Future<List<int>> _loadPdf(String url) async {
    final response = await http.get(Uri.parse(url));
    return response.bodyBytes;
  }
}
