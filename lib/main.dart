

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/intro_page.dart';


void main() {
  runApp(const ebook());
}

//class stateless static it could not be changed
class ebook extends StatelessWidget {
  const ebook({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //debugShowCheckedModeBanner: false to remove the debug banner
      debugShowCheckedModeBanner: false,
      //add the color white in text
      // theme: ThemeData(
      // primarySwatch: Colors.white as MaterialColor?,
      // scaffoldBackgroundColor: Colors.black,
      // ),
      title: 'Ebook App',
     home: IntroPage(),
       // home:Books()
    );
  }
}
