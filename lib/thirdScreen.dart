import 'package:flutter/material.dart';
import 'package:homework3/fourthScreen.dart';
import 'package:homework3/userD.dart';

class ThirdS extends StatefulWidget {
  final UserData userData;

  const ThirdS({required this.userData});

  @override
  State<ThirdS> createState() => _ThirdSState();
}

class _ThirdSState extends State<ThirdS> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[800],
        title: const Text('Profile Information'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 25,
            ),
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('img/img3.png'),
                ),
              ),
              height: 300,
            ),
            SizedBox(height: 20),
            ListTile(
              title: Text(
                'Phone:',
                style: TextStyle(
                  color: Colors.green[800],
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                widget.userData.phone,
                style: TextStyle(
                  fontSize: 24,
                  color: const Color.fromARGB(255, 76, 137, 175),
                ),
              ),
            ),
            ListTile(
              title: Text(
                'Email:',
                style: TextStyle(
                  color: Colors.green[800],
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                widget.userData.email,
                style: TextStyle(
                  fontSize: 24,
                  color: const Color.fromARGB(255, 76, 137, 175),
                ),
              ),
            ),
            ListTile(
              title: Text(
                'Password:',
                style: TextStyle(
                  color: Colors.green[800],
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                widget.userData.password,
                style: TextStyle(
                  fontSize: 24,
                  color: const Color.fromARGB(255, 76, 137, 175),
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FourthS(),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text('Saved'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
