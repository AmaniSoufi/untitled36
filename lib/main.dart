
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:untitled36/Auth.dart';
import 'package:untitled36/Login.dart';
import 'package:untitled36/chat.dart';

import 'package:untitled36/register.dart';
import 'package:untitled36/splashScreen.dart';
import 'dart:io';

void main() async  {
  WidgetsFlutterBinding.ensureInitialized();

  Platform.isAndroid?
  await Firebase.initializeApp(
    options: const FirebaseOptions(
    apiKey: "AIzaSyA_Hjr3qSvPimw7ZJMm4mRZUEOiGYaFt_g", 
    appId: "1:1065814042372:android:57acd53de7b0931ea59251",
    messagingSenderId: "1065814042372",
    projectId:"app1-4b233", )
  )
:await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return  MaterialApp(
      debugShowCheckedModeBanner: false ,
    routes: {
      '/':(context)=> splashScreen(),
      '/Auth':(context)=>Auth(),
      '/chat':(context)=>chat(),


      
    },
    );
  }
}

