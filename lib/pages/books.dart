import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/book_widget.dart';
import 'package:flutter_application_1/pages/PDFViewerPage.dart';

class Books extends StatelessWidget {
  const Books({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      imagePath: 'assets/covers/boundaries cover.jpg',
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                PDFViewerPage(bookname: "Rich Dad Poor Dad")),
                      );
                    },
                    child: myBook(
                      imagePath: 'assets/covers/Rich dad cover.jpg',
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PDFViewerPage(
                                bookname: "Atomic Habits James Clear")),
                      );
                    },
                    child: myBook(
                      imagePath: 'assets/covers/Atomic habits cover.jpg',
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
