import 'package:flutter/material.dart';

class UpperBodyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Upper Body Workouts'),
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
              title: Text('Push-ups', style: TextStyle(color: Colors.white)),
              subtitle: Text('3 sets of 12 reps', style: TextStyle(color: Colors.white)),
              isThreeLine: true,
              contentPadding: EdgeInsets.symmetric(vertical: 8.0),
              trailing: Icon(Icons.fitness_center, color: Colors.white),
              onTap: () {
                _showDescription(context, 'Push-ups', 'Start in a plank position with hands slightly wider than shoulder-width apart. Lower your body until your chest almost touches the ground, then push yourself back up.');
              },
            ),
            ListTile(
              title: Text('Chest Press', style: TextStyle(color: Colors.white)),
              subtitle: Text('3 sets of 12 reps', style: TextStyle(color: Colors.white)),
              isThreeLine: true,
              contentPadding: EdgeInsets.symmetric(vertical: 8.0),
              trailing: Icon(Icons.fitness_center, color: Colors.white),
              onTap: () {
                _showDescription(context, 'Chest Press', 'Lie on a bench with a dumbbell in each hand. Press the weights upwards until your arms are fully extended, then lower them back to chest level.');
              },
            ),
            ListTile(
              title: Text('Dumbbell Rows', style: TextStyle(color: Colors.white)),
              subtitle: Text('3 sets of 12 reps', style: TextStyle(color: Colors.white)),
              isThreeLine: true,
              contentPadding: EdgeInsets.symmetric(vertical: 8.0),
              trailing: Icon(Icons.fitness_center, color: Colors.white),
              onTap: () {
                _showDescription(context, 'Dumbbell Rows', 'Place one knee and hand on a bench, holding a dumbbell in the opposite hand. Pull the weight towards your torso, then lower it back down.');
              },
            ),
            ListTile(
              title: Text('Bicep Curls', style: TextStyle(color: Colors.white)),
              subtitle: Text('3 sets of 15 reps', style: TextStyle(color: Colors.white)),
              isThreeLine: true,
              contentPadding: EdgeInsets.symmetric(vertical: 8.0),
              trailing: Icon(Icons.fitness_center, color: Colors.white),
              onTap: () {
                _showDescription(context, 'Bicep Curls', 'Stand with a dumbbell in each hand, arms fully extended. Curl the weights towards your shoulders, then slowly lower them back down.');
              },
            ),
            ListTile(
              title: Text('Tricep Extensions', style: TextStyle(color: Colors.white)),
              subtitle: Text('3 sets of 15 reps', style: TextStyle(color: Colors.white)),
              isThreeLine: true,
              contentPadding: EdgeInsets.symmetric(vertical: 8.0),
              trailing: Icon(Icons.fitness_center, color: Colors.white),
              onTap: () {
                _showDescription(context, 'Tricep Extensions', 'Hold a dumbbell overhead with both hands. Lower the weight behind your head by bending your elbows, then extend your arms back to the starting position.');
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
