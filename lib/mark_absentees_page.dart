import 'package:flutter/material.dart';

class MarkAbsenteesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mark_Absentees'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: 9,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                'Mark_Absentees ${index + 1}',
                style: TextStyle(fontSize: 18.0),
              ),
            ),
          );
        },
      ),
    );
  }
}
