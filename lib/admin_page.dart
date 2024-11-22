import 'package:flutter/material.dart';

class AdminPage extends StatelessWidget {
  final List<String> cardNames = [
    'Add New Counselor',
    "Update Counselor's Record",
    'Search for Counselor',
    'View Account Details',
    'Update Parish Profile',
    'Log Out'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Admin'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: cardNames.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                cardNames[index],
                style: TextStyle(fontSize: 18.0),
                textAlign: TextAlign.center,
              ),
            ),
          );
        },
      ),
    );
  }
}
