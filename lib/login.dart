import 'package:flutter/material.dart';
import 'package:versafit/signup.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _usernameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _login() {
    if (_formKey.currentState!.validate()) {
      // Display a success message with custom color
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Login Successful'),
          backgroundColor: Color.fromARGB(255, 3, 55, 243), // Custom color for the SnackBar
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        backgroundColor: Color.fromARGB(255, 44, 137, 212), // Matching the top color of the sign-in page
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF060F41), // Gradient color at 33%
              Color(0xFF3B5993), // Gradient color at 100%
            ],
            stops: [0.33, 1.0], // Gradient stops
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 20),
                TextFormField(
                  controller: _emailController,
                  style: TextStyle(color: Colors.white), // Text color in field
                  decoration: InputDecoration(
                    labelText: 'Email',
                    labelStyle: TextStyle(color: Color.fromARGB(255, 249, 250, 253)), // Matching sign-in page
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color.fromARGB(255, 249, 250, 253)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color.fromARGB(255, 158, 158, 158)),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Color.fromARGB(255, 158, 158, 158)),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email';
                    }
                    if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                      return 'Please enter a valid email address';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                TextFormField(
                  controller: _passwordController,
                  style: TextStyle(color: Colors.white), // Text color in field
                  decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: TextStyle(color: Color.fromARGB(255, 249, 250, 253)), // Matching sign-in page
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color.fromARGB(255, 249, 250, 253)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color.fromARGB(255, 158, 158, 158)),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Color.fromARGB(255, 158, 158, 158)),
                    ),
                  ),
                  obscureText: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: _login,
                  child: Text('Login'),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white, backgroundColor: Color.fromARGB(255, 44, 137, 212), // Text color
                  ),
                ),
                SizedBox(height: 20),
                TextButton(
                  onPressed: () {
                    // Navigate to the Sign Up page without form validation
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Signup()),
                    );
                  },
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white, // Text color
                  ),
                  child: const Text('Don\'t have an account? Sign up'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
