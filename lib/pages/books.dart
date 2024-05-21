import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/book_widget.dart';
import 'package:flutter_application_1/pages/PDFViewerPage.dart';

class Books extends StatelessWidget {
  const Books({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Book App")),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                PDFViewerPage(bookname: "Boundaries")),
                      );
                    },
                    child: myBook(
                      imagePath: 'assets/boundaries cover.jpg',
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                PDFViewerPage(bookname: "TP1")),
                      );
                    },
                    child: myBook(
                      imagePath: 'assets/Rich dad cover.jpg',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
