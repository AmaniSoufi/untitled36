import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class chat extends StatelessWidget {
  const chat({super.key});
  void signInOut(){
    FirebaseAuth.instance.signOut();
   // GoogleSignIn.disconnect();
  }
  

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(actions: [IconButton(onPressed:signInOut, icon: Icon(Icons.logout))],),
      body: Center(
        
        child:Text("Welcom") ,
      ),
    );
  }
}