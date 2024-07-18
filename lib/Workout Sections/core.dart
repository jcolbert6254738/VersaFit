import 'package:flutter/material.dart';

class CorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Core Workouts'),
        backgroundColor: Color.fromARGB(255, 56, 9, 242),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF060F41),
              Color(0xFF3B5993),
            ],
            stops: [0.33, 1.0],
          ),
        ),
        child: ListView(
          padding: EdgeInsets.all(16.0),
          children: <Widget>[
            ListTile(
              title: Text('Planks', style: TextStyle(color: Colors.white)),
              subtitle: Text('3 sets of 30 seconds', style: TextStyle(color: Colors.white)),
              isThreeLine: true,
              contentPadding: EdgeInsets.symmetric(vertical: 8.0),
              trailing: Icon(Icons.fitness_center, color: Colors.white),
              onTap: () {
                _showDescription(context, 'Planks', 'Hold a plank position on your elbows and toes, keeping your body in a straight line from head to heels. Maintain this position for the duration.');
              },
            ),
            ListTile(
              title: Text('Russian Twists', style: TextStyle(color: Colors.white)),
              subtitle: Text('3 sets of 20 reps', style: TextStyle(color: Colors.white)),
              isThreeLine: true,
              contentPadding: EdgeInsets.symmetric(vertical: 8.0),
              trailing: Icon(Icons.fitness_center, color: Colors.white),
              onTap: () {
                _showDescription(context, 'Russian Twists', 'Sit on the floor with your knees bent and feet lifted. Lean back slightly and twist your torso to the left and right while holding a weight or medicine ball.');
              },
            ),
            ListTile(
              title: Text('Leg Raises', style: TextStyle(color: Colors.white)),
              subtitle: Text('3 sets of 15 reps', style: TextStyle(color: Colors.white)),
              isThreeLine: true,
              contentPadding: EdgeInsets.symmetric(vertical: 8.0),
              trailing: Icon(Icons.fitness_center, color: Colors.white),
              onTap: () {
                _showDescription(context, 'Leg Raises', 'Lie on your back with legs straight. Lift your legs up towards the ceiling while keeping them straight, then slowly lower them back down without touching the floor.');
              },
            ),
            ListTile(
              title: Text('Bicycle Crunches', style: TextStyle(color: Colors.white)),
              subtitle: Text('3 sets of 20 reps', style: TextStyle(color: Colors.white)),
              isThreeLine: true,
              contentPadding: EdgeInsets.symmetric(vertical: 8.0),
              trailing: Icon(Icons.fitness_center, color: Colors.white),
              onTap: () {
                _showDescription(context, 'Bicycle Crunches', 'Lie on your back with hands behind your head and legs lifted. Bring one knee towards your chest while twisting your torso to bring the opposite elbow towards that knee. Alternate sides.');
              },
            ),
            ListTile(
              title: Text('Mountain Climbers', style: TextStyle(color: Colors.white)),
              subtitle: Text('3 sets of 30 seconds', style: TextStyle(color: Colors.white)),
              isThreeLine: true,
              contentPadding: EdgeInsets.symmetric(vertical: 8.0),
              trailing: Icon(Icons.fitness_center, color: Colors.white),
              onTap: () {
                _showDescription(context, 'Mountain Climbers', 'Start in a plank position. Bring one knee towards your chest, then quickly switch legs, as if running in place while maintaining a plank position.');
              },
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
        currentIndex: 1, // Set current index to 1 for Workouts tab
        selectedItemColor: Colors.blue,
        onTap: (index) {
          if (index == 0) {
            Navigator.pushNamed(context, '/');
          } else if (index == 2) {
            Navigator.pushNamed(context, '/profile');
          }
        },
      ),
    );
  }

  void _showDescription(BuildContext context, String title, String description) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(description),
          actions: [
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
