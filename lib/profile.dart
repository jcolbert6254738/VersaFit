import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        child: Column(
          children: [
            // Title at the top
            Padding(
              padding: const EdgeInsets.only(top: 80.0, bottom: 16.0), // Adjusted padding
              child: Text(
                'Profile',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            // Profile Picture Circle
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 20.0),
                width: 100.0,
                height: 100.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white, // White circle
                ),
              ),
            ),
            SizedBox(height: 20.0),
            // User Information
            Center(
              child: Column(
                children: [
                  Text(
                    'Username: Your Name',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Text(
                    'Progress',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    width: 300.0,
                    margin: EdgeInsets.symmetric(vertical: 10.0),
                    child: LinearProgressIndicator(
                      value: 0.0, // Set progress to 0 out of 100
                      backgroundColor: Colors.grey[300],
                      color: Colors.blue,
                    ),
                  ),
                  Text(
                    '0 out of 100 workouts',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Spacer(), // To push the sign-out button to the bottom
            // Sign Out Button
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                },
                child: Text('Sign Out'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red, // Change the button color if needed
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.fitness_center),
            label: 'Workouts',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: 2, // Set current index to 2 for Profile tab
        selectedItemColor: Colors.blue,
        onTap: (index) {
          if (index == 0) {
            Navigator.pushNamed(context, '/');
          } else if (index == 1) {
            Navigator.pushNamed(context, '/workouts');
          }
        },
      ),
    );
  }
}
