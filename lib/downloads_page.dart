import 'package:flutter/material.dart';

class DownloadsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Downloads'),
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
                'Downloads ${index + 1}',
                style: TextStyle(fontSize: 18.0),
              ),
            ),
          );
        },
      ),
    );
  }
}
