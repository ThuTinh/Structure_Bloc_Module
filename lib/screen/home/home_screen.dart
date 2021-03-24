import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static final routeName = "/home";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Center(
          child: Text("hihi"),
        ),
      ),
    );
  }
}
