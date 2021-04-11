import 'package:flutter/material.dart';

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Jam Music app",
      home: Scaffold(
        appBar: AppBar(
          title: Text('Jam music'),
        ),
      ),
    );
  }
}
