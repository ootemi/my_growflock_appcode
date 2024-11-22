import 'package:flutter/material.dart';

class MembershipPage extends StatelessWidget {
  final List<String> cardNames = [
    'Add New Member',
    'Bulk Uploads',
    "Update Member's Record",
    'Assign Followup Worker',
    'Member Directory',
    'Member Reports',
    'Member Analytics',
    'Member Communication',
    'Member Support'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Membership'),
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
