import 'dart:async';

import 'package:flutter/material.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({super.key});

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  void initState(){
    super.initState();
    startTimer();
  }

  startTimer(){
    var duration = Duration(seconds: 5);
    return Timer(duration, route);
  }
  route(){
    Navigator.pushReplacementNamed(context, '/Auth');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
            backgroundColor: Colors.grey[100],
      body: Center(
      child: Container(
        height: 150,
        child: Image.asset('images/message-vocal.png'),
      ),
      ),
    );
  }
}