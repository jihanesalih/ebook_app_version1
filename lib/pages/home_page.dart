import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/PDFViewerPage.dart';
import 'package:flutter_application_1/pages/book_widget.dart';
import 'package:flutter_application_1/pages/books.dart';
import 'package:flutter_application_1/pages/login_page.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ebook App',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 0, 0, 0),
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            'Ebook App',
            style: TextStyle(color: Colors.white),
          ),
          // backgroundColor: Colors.black,
          leading: Builder(builder: (context) {
            return IconButton(
              icon: Icon(Icons.menu),
              color: Colors.white,
              onPressed: () {
                //to open the drawer basically
                Scaffold.of(context).openDrawer();
                // Handle burger menu press
              },
            );
          }),
        ),
        drawer: Drawer(
            backgroundColor: Colors.black,
            child: Column(
              children: [
                //logo
                Image.asset(
                  'assets/logo1.png',
                  width: 200,
                ),
                //add space
                SizedBox(
                  height: 50,
                ),
                const Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.account_circle,
                      color: Colors.white,
                    ),
                    title: Text(
                      'user ',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),

                const Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.favorite,
                        color: Colors.white,
                      ),
                      title: Text(
                        'Favorites',
                        style: TextStyle(color: Colors.white),
                      ),
                    )),

                Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: ListTile(
                    leading: const Icon(
                      Icons.logout,
                      color: Colors.white,
                    ),
                    title: const Text(
                      'Logout',
                      style: TextStyle(color: Colors.white),
                    ),
                    onTap: () {
                      // Navigate to the sign-in page
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                    },
                  ),
                )
              ],
            )),
        //body
        body: HomePageMain(),

        //bottom navigation bar
        bottomNavigationBar: BottomAppBar(
          color: Colors.black,
          child: SingleChildScrollView(
            //add
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  icon: const Icon(Icons.home),
                  color: Colors.white,
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.search),
                  color: Colors.white,
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.more_vert),
                  color: Colors.white,
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class HomePageMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // body: PDFViewerPage(),
        /*  body: Column(
        children: [
          Books(),
        ],), */
        );
  }
}
