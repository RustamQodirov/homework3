import 'package:flutter/material.dart';
import 'package:homework3/lastScreen.dart';

class FourthS extends StatelessWidget {
  final List<String> sportsCategories = [
    'Football',
    'Basketball',
    'Tennis',
    'Golf',
    'Cricket',
    'Running',
    'Cycling',
    'Swimming',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LastS(),
                ),
              );
            },
            icon: Icon(Icons.person),
          ),
        ],
        title: Text('Sports Dashboard'),
        backgroundColor: Colors.green[800],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16.0,
            mainAxisSpacing: 16.0,
          ),
          itemCount: sportsCategories.length,
          itemBuilder: (context, index) {
            return _buildSportsCard(sportsCategories[index]);
          },
        ),
      ),
    );
  }

  Widget _buildSportsCard(String category) {
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: InkWell(
        onTap: () {},
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.sports,
              size: 50,
              color: Colors.green,
            ),
            SizedBox(height: 8),
            Text(
              category,
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
