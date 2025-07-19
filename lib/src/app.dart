import 'package:flutter/material.dart';
// Import your LoginScreen widget here
import './screens/login_screen.dart';

class App extends StatelessWidget {
  @override
  build(context) {
    return MaterialApp(
      title: "Log Me In!",
      home: Scaffold(
        body: LoginScreen(),
      ),
    );
  }
}