import 'package:flutter/material.dart';

class LowerBodyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lower Body Workouts'),
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
              title: Text('Squats', style: TextStyle(color: Colors.white)),
              subtitle: Text('3 sets of 15 reps', style: TextStyle(color: Colors.white)),
              isThreeLine: true,
              contentPadding: EdgeInsets.symmetric(vertical: 8.0),
              trailing: Icon(Icons.fitness_center, color: Colors.white),
              onTap: () {
                _showDescription(context, 'Squats', 'Stand with feet shoulder-width apart. Lower your body by bending your knees until your thighs are parallel to the ground, then return to the starting position.');
              },
            ),
            ListTile(
              title: Text('Lunges', style: TextStyle(color: Colors.white)),
              subtitle: Text('3 sets of 12 reps per leg', style: TextStyle(color: Colors.white)),
              isThreeLine: true,
              contentPadding: EdgeInsets.symmetric(vertical: 8.0),
              trailing: Icon(Icons.fitness_center, color: Colors.white),
              onTap: () {
                _showDescription(context, 'Lunges', 'Step forward with one leg, lowering your hips until both knees are bent at about a 90-degree angle. Push back to the starting position and repeat on the other side.');
              },
            ),
            ListTile(
              title: Text('Leg Press', style: TextStyle(color: Colors.white)),
              subtitle: Text('3 sets of 15 reps', style: TextStyle(color: Colors.white)),
              isThreeLine: true,
              contentPadding: EdgeInsets.symmetric(vertical: 8.0),
              trailing: Icon(Icons.fitness_center, color: Colors.white),
              onTap: () {
                _showDescription(context, 'Leg Press', 'Sit on the leg press machine with feet placed on the platform. Push the platform away by extending your legs, then return to the starting position.');
              },
            ),
            ListTile(
              title: Text('Deadlifts', style: TextStyle(color: Colors.white)),
              subtitle: Text('3 sets of 12 reps', style: TextStyle(color: Colors.white)),
              isThreeLine: true,
              contentPadding: EdgeInsets.symmetric(vertical: 8.0),
              trailing: Icon(Icons.fitness_center, color: Colors.white),
              onTap: () {
                _showDescription(context, 'Deadlifts', 'Stand with feet hip-width apart, holding a barbell. Bend your knees slightly and lower your torso while keeping your back straight. Lift the barbell by extending your hips and knees.');
              },
            ),
            ListTile(
              title: Text('Calf Raises', style: TextStyle(color: Colors.white)),
              subtitle: Text('3 sets of 20 reps', style: TextStyle(color: Colors.white)),
              isThreeLine: true,
              contentPadding: EdgeInsets.symmetric(vertical: 8.0),
              trailing: Icon(Icons.fitness_center, color: Colors.white),
              onTap: () {
                _showDescription(context, 'Calf Raises', 'Stand on the edge of a step with heels hanging off. Raise your heels as high as possible, then lower them back down below the step level.');
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
