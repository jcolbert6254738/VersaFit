import 'package:flutter/material.dart';

class SupportMusclesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Support Muscles Workouts'),
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
              title: Text('Shoulder Press', style: TextStyle(color: Colors.white)),
              subtitle: Text('3 sets of 12 reps', style: TextStyle(color: Colors.white)),
              isThreeLine: true,
              contentPadding: EdgeInsets.symmetric(vertical: 8.0),
              trailing: Icon(Icons.fitness_center, color: Colors.white),
              onTap: () {
                _showDescription(context, 'Shoulder Press', 'Sit or stand with a dumbbell in each hand. Press the weights overhead until your arms are fully extended, then lower them back to shoulder level.');
              },
            ),
            ListTile(
              title: Text('Tricep Dips', style: TextStyle(color: Colors.white)),
              subtitle: Text('3 sets of 15 reps', style: TextStyle(color: Colors.white)),
              isThreeLine: true,
              contentPadding: EdgeInsets.symmetric(vertical: 8.0),
              trailing: Icon(Icons.fitness_center, color: Colors.white),
              onTap: () {
                _showDescription(context, 'Tricep Dips', 'Use parallel bars or a bench. Lower your body by bending your elbows, then push yourself back up to the starting position.');
              },
            ),
            ListTile(
              title: Text('Front Raises', style: TextStyle(color: Colors.white)),
              subtitle: Text('3 sets of 12 reps', style: TextStyle(color: Colors.white)),
              isThreeLine: true,
              contentPadding: EdgeInsets.symmetric(vertical: 8.0),
              trailing: Icon(Icons.fitness_center, color: Colors.white),
              onTap: () {
                _showDescription(context, 'Front Raises', 'Hold a dumbbell in each hand. With arms straight, lift the weights in front of you up to shoulder height, then lower them back down.');
              },
            ),
            ListTile(
              title: Text('Lateral Raises', style: TextStyle(color: Colors.white)),
              subtitle: Text('3 sets of 15 reps', style: TextStyle(color: Colors.white)),
              isThreeLine: true,
              contentPadding: EdgeInsets.symmetric(vertical: 8.0),
              trailing: Icon(Icons.fitness_center, color: Colors.white),
              onTap: () {
                _showDescription(context, 'Lateral Raises', 'Stand with dumbbells in each hand at your sides. Lift the weights out to the sides up to shoulder height, then slowly lower them back down.');
              },
            ),
            ListTile(
              title: Text('Skull Crushers', style: TextStyle(color: Colors.white)),
              subtitle: Text('3 sets of 12 reps', style: TextStyle(color: Colors.white)),
              isThreeLine: true,
              contentPadding: EdgeInsets.symmetric(vertical: 8.0),
              trailing: Icon(Icons.fitness_center, color: Colors.white),
              onTap: () {
                _showDescription(context, 'Skull Crushers', 'Lie on a bench with a barbell or dumbbells. Extend your arms straight up, then lower the weights towards your forehead by bending your elbows, and extend back up.');
              },
            ),
            ListTile(
              title: Text('Cable Tricep Extensions', style: TextStyle(color: Colors.white)),
              subtitle: Text('3 sets of 15 reps', style: TextStyle(color: Colors.white)),
              isThreeLine: true,
              contentPadding: EdgeInsets.symmetric(vertical: 8.0),
              trailing: Icon(Icons.fitness_center, color: Colors.white),
              onTap: () {
                _showDescription(context, 'Cable Tricep Extensions', 'Stand facing a cable machine with a handle attachment. Push the handle down until your arms are fully extended, then return to the starting position.');
              },
            ),
            ListTile(
              title: Text('Upright Rows', style: TextStyle(color: Colors.white)),
              subtitle: Text('3 sets of 12 reps', style: TextStyle(color: Colors.white)),
              isThreeLine: true,
              contentPadding: EdgeInsets.symmetric(vertical: 8.0),
              trailing: Icon(Icons.fitness_center, color: Colors.white),
              onTap: () {
                _showDescription(context, 'Upright Rows', 'Stand with feet shoulder-width apart, holding a barbell or dumbbells. Pull the weights up towards your chin, keeping your elbows higher than your wrists.');
              },
            ),
            ListTile(
              title: Text('Arnold Press', style: TextStyle(color: Colors.white)),
              subtitle: Text('3 sets of 12 reps', style: TextStyle(color: Colors.white)),
              isThreeLine: true,
              contentPadding: EdgeInsets.symmetric(vertical: 8.0),
              trailing: Icon(Icons.fitness_center, color: Colors.white),
              onTap: () {
                _showDescription(context, 'Arnold Press', 'Hold a dumbbell in each hand with palms facing you. As you press the weights overhead, rotate your wrists so your palms face forward at the top.');
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
