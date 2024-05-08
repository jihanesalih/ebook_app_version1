/* import 'package:flutter/material.dart';

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
      title: 'Ebook App',
      theme: ThemeData(
        // we use useMaterial3 to use the latest material design
        useMaterial3: true,
      ),

      //home is the first screen that will be displayed in the center with the specified
      home: const Scaffold(
        backgroundColor: Color(0xFF404A70),
        body: MyHomePage(),
      ),
    );
  }
}

//class stateful dynamic it could be changed
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // SafeArea is used to avoid the notch and the bottom bar
    return SafeArea(
      // Center is used to center the image
      child: Center(child: Image.asset('assets/logo.png')),
    );
  }
}
 */

/* import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Screen',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Color(0xFF404A70),
      ),
      home: Center(
        child: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _usernameController = TextEditingController();
  final _emailController = TextEditingController();

  @override
  void dispose() {
    _usernameController.dispose();
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Screen'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('NAME'),
              TextField(
                controller: _usernameController,
                decoration: InputDecoration(hintText: 'Jiara Martins'),
              ),
              SizedBox(height: 20),
              Text('EMAIL'),
              TextField(
                controller: _emailController,
                decoration:
                    InputDecoration(hintText: 'hello@reallygreatsite.com'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Handle login logic here
                },
                child: Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
} */

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
    );
  }
}
