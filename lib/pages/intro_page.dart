import 'package:flutter/material.dart';

import 'signup_page.dart';

class IntroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //background color
      // backgroundColor: Color(0xFF404A70),

      //bacckground image

      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background/back.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //logo
              Image.asset(
                'assets/logos/logo1.png',
                height: 240,
              ),

              //start now button with elevated button
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    // MaterialPageRoute(builder: (context) => LoginPage()),
                    MaterialPageRoute(builder: (context) => SignUpPage()),
                  );
                },
                child: Text('Start Now'),
              ),
            ],
          ),

          /* GestureDetector(
                //on tap to go to login page and pushNamed for routing
                onTap: () => Navigator.push(context,MaterialPageRoute(builder:(context) => LoginPage()),
                //ElevatedButton widget for button design and text
                ))
               */
        ),
      ),
    );
  }
}
