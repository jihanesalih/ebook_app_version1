import 'package:flutter/material.dart';
import 'login_page.dart';
import 'home_page.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sign Up Screen',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
      ),
      home: Center(
        child: SignUpPageMain(),
      ),
    );
  }
}

class SignUpPageMain extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPageMain> {
  //text controllers
  final _usernameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  bool _obscureText = true;

  @override
  void dispose() {
    _usernameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          //this for the keyboard error
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Sign Up',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                //this is the margin between the Sign Up and "enter your details to sign up"
                SizedBox(height: 8),
                Text(
                  'Enter your details to Sign Up!',
                  style: TextStyle(color: Colors.white, fontSize: 10),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 32),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('USERNAME', style: TextStyle(color: Colors.white)),
                    TextField(
                      //change input color from default grey to white
                      style: TextStyle(color: Colors.white),
                      controller: _usernameController,
                      decoration: InputDecoration(
                        hintText: '',
                        labelStyle: TextStyle(color: Colors.white),
                      ),
                    ),
                    SizedBox(height: 20),
                    Text('EMAIL', style: TextStyle(color: Colors.white)),
                    TextField(
                      //change input color from default grey to white
                      style: TextStyle(color: Colors.white),
                      controller: _emailController,
                      decoration: InputDecoration(
                        hintText: '',
                        labelStyle: TextStyle(color: Colors.white),
                      ),
                    ),
                    SizedBox(height: 20),
                    Text('PASSWORD', style: TextStyle(color: Colors.white)),
                    TextField(
                      //change input color from default grey to white
                      style: TextStyle(color: Colors.white),
                      controller: _passwordController,
                      obscureText: _obscureText,
                      decoration: InputDecoration(
                        hintText: '',
                        labelStyle: TextStyle(color: Colors.white),
                        suffixIcon: IconButton(
                          icon: Icon(_obscureText
                              ? Icons.visibility_off
                              : Icons.visibility),
                          color: Colors.white,
                          onPressed: () {
                            setState(() {
                              _obscureText = !_obscureText;
                            });
                          },
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Text('CONFIRM PASSWORD',
                        style: TextStyle(color: Colors.white)),
                    TextField(
                      //change input color from default grey to white
                      style: TextStyle(color: Colors.white),
                      controller: _confirmPasswordController,
                      obscureText: _obscureText,
                      decoration: InputDecoration(
                        hintText: '',
                        labelStyle: TextStyle(color: Colors.white),
                        suffixIcon: IconButton(
                          icon: Icon(_obscureText
                              ? Icons.visibility_off
                              : Icons.visibility),
                          color: Colors.white,
                          onPressed: () {
                            setState(() {
                              _obscureText = !_obscureText;
                            });
                          },
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        // Handle sign-up logic here
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => HomePage()),
                        );
                      },
                      child: Text('Sign Up'),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'You already have an account?',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginPage()),
                            );
                          },
                          child: Text(
                            'Login in',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
