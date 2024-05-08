import 'package:flutter/material.dart';

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
          title: Text(
            'Ebook App',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.black,
          leading: IconButton(
            icon: Icon(Icons.menu),
            color: Colors.white,
            onPressed: () {
              // Handle burger menu press
            },
          ),
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  icon: Icon(Icons.account_circle),
                  color: Colors.white,
                  onPressed: () {
                    // Handle user icon press
                  },
                ),
              ],
            ),
          ],
        ),
        body: HomePageMain(),
        //bottom bar
        /*  bottomNavigationBar: BottomAppBar(
          color: Colors.black,
          shape: CircularNotchedRectangle(),
          notchMargin: 4.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                icon: Icon(Icons.home),
                color: Colors.white,
                onPressed: () {
                  // Handle home button press
                },
              ),
              IconButton(
                icon: Icon(Icons.favorite),
                color: Colors.white,
                onPressed: () {
                  // Handle favorites button press
                },
              ),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search',
                    hintStyle: TextStyle(color: Colors.white),
                    border: InputBorder.none,
                  ),
                  style: TextStyle(color: Colors.white),
                  onChanged: (value) {
                    // Handle search bar input
                  },
                ),
              ),
            ],
          ),
        ), */
        bottomNavigationBar: BottomAppBar(
          color: Colors.black,
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
    );
  }
}

class HomePageMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          // Add your content here
        ],
      ),
    );
  }
}
