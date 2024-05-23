import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/book_widget.dart';
import 'package:flutter_application_1/pages/PDFViewerPage.dart';

class Books extends StatelessWidget {
  const Books({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
            /*  GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            PDFViewerPage(bookname: "Rich_Dad_Poor_Dad")),
                  );
                },
                child: myBook(
                  imagePath: 'assets/covers/Rich dad cover.jpg',
                ),
              ), */
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PDFViewerPage(
                          bookname: "Atomic _Habits_ James _Clear")),
                );
              },
              child: myBook(
                imagePath: 'assets/covers/Atomic habits cover.webp',
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          PDFViewerPage(bookname: "The_Strength_In_Our_Scars")),
                );
              },
              child: myBook(
                imagePath: 'assets/covers/scars.jpg',
              ),
            ),
          ],
        ),
      ],
    );
  }
}
