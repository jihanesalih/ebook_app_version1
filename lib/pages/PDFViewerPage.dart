import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';

class PDFViewerPage extends StatefulWidget {
  const PDFViewerPage({super.key, required this.bookname});
  final String bookname;
  @override
  _PDFViewerPageState createState() => _PDFViewerPageState();
}

class _PDFViewerPageState extends State<PDFViewerPage> {
  String pathPDF = "";

  @override
  void initState() {
    super.initState();
    _loadPDF().then((file) {
      setState(() {
        pathPDF = file.path;
      });
    });
  }

  Future<File> _loadPDF() async {
    try {
      // Load the PDF file from assets
      final byteData = await rootBundle.load('assets/${widget.bookname}.pdf');
      // Get the temporary directory
      final dir = await getTemporaryDirectory();
      // Create a temporary file
      final file = File('${dir.path}/${widget.bookname}.pdf');
      // Write the PDF file bytes to the temporary file
      await file.writeAsBytes(byteData.buffer.asUint8List());
      return file;
    } catch (e) {
      throw Exception("Error loading PDF file: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pathPDF.isNotEmpty
          ? PDFView(
              filePath: pathPDF,
              enableSwipe: true,
              swipeHorizontal: true,
              autoSpacing: false,
              pageFling: false,
              onRender: (_pages) {
                setState(() {});
              },
              onError: (error) {
                print(error.toString());
              },
              onPageError: (page, error) {
                print('$page: ${error.toString()}');
              },
            )
          : Center(child: CircularProgressIndicator()),
    );
  }
}
