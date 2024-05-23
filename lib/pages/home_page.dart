import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/books.dart';
import 'package:flutter_application_1/pages/login_page.dart';
import 'package:flutter_application_1/pages/user_profil.dart';
import 'package:flutter_application_1/pages/categories.dart';

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
            'Library',
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
                  'assets/logos/logo1.png',
                  width: 200,
                ),
                //add space
                SizedBox(
                  height: 50,
                ),
                Padding(
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
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => UserProfile()),
                      );
                    },
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
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                      hintText: 'Search',
                      hintStyle: TextStyle(color: Colors.white),
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      contentPadding: EdgeInsets.all(8.0),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide.none),
                      filled: true,
                      // fillColor: Colors.grey[800]),
                      fillColor: Color.fromARGB(255, 39, 38, 38)),
                ),
                HomePageMain(),
              ],
            ),
          ),
        ),

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
                  icon: const Icon(Icons.category),
                  color: Colors.white,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CategoriesPage()),
                    );
                  },
                ),
                /*  IconButton(
                  icon: const Icon(Icons.search),
                  color: Colors.white,
                  onPressed: () {},
                ), */
                // three point icon
                //icon: const Icon(Icons.more_vert),
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
    return Books();
  }
}
