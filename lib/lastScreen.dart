import 'package:flutter/material.dart';
import 'package:homework3/home.dart';

class LastS extends StatefulWidget {
  const LastS({super.key});

  @override
  State<LastS> createState() => _LastSState();
}

class _LastSState extends State<LastS> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[800],
        title: Text('Sign out'),
      ),
      backgroundColor: Colors.green[200],
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(45.0),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('img/img0.png'),
                ),
              ),
              height: 450,
            ),
          ),
          Text(
            "Are you sure ?",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 19),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeSc(),
                  ),
                );
              },
              child: Text('Sign out'),
            ),
          ),
        ],
      ),
    );
  }
}
