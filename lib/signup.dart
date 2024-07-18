import 'package:flutter/material.dart';
import 'package:versafit/auth/data/firebase_service/firebase_auth.dart';
import 'package:versafit/homepage.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  void _signup() {
    if (_formKey.currentState!.validate()) {
      // Display a success message with custom color
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Account Created'),
          backgroundColor: Colors.green, // Custom color for the SnackBar
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
        backgroundColor: Color(0xFF3B5993), // Match your login page
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF060F41), // Match your login page
              Color(0xFF3B5993), // Match your login page
            ],
            stops: [0.33, 1.0],
          ),
        ),
        child: Center( // Center the column in the middle of the screen
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center, // Center children vertically
                crossAxisAlignment: CrossAxisAlignment.center, // Center children horizontally
                children: <Widget>[
                  TextFormField(
                    controller: _emailController,
                    style: TextStyle(color: Colors.white), // Text color set to white
                    decoration: InputDecoration(
                      labelText: 'Email',
                      labelStyle: TextStyle(color: Colors.white), // Label text color
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white), // Border color when focused
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white), // Border color when enabled
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white), // Border color
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your email';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    controller: _passwordController,
                    style: TextStyle(color: Colors.white), // Text color set to white
                    decoration: InputDecoration(
                      labelText: 'Password',
                      labelStyle: TextStyle(color: Colors.white), // Label text color
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white), // Border color when focused
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white), // Border color when enabled
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white), // Border color
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
                  TextFormField(
                    controller: _confirmPasswordController,
                    style: TextStyle(color: Colors.white), // Text color set to white
                    decoration: InputDecoration(
                      labelText: 'Confirm Password',
                      labelStyle: TextStyle(color: Colors.white), // Label text color
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white), // Border color when focused
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white), // Border color when enabled
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white), // Border color
                      ),
                    ),
                    obscureText: true,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please confirm your password';
                      }
                      if (value != _passwordController.text) {
                        return 'Passwords do not match';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () async {
                      await Authentication().Signup(email: _emailController.text, password: _passwordController.text, confirm_password: _confirmPasswordController.text);
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                      );
                    },
                    child: Text('Sign Up'),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white, 
                      backgroundColor: Color(0xFF3B5993), // Match your login page
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
