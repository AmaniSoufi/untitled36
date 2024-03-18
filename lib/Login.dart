
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:untitled36/chat.dart';
import 'package:untitled36/my_buttom.dart';
import 'package:untitled36/register.dart';
import 'package:google_sign_in/google_sign_in.dart';




class Login extends StatefulWidget{ 
  const Login({super.key});
  @override
  State<Login> createState() => _LoginState();
}
class _LoginState extends State<Login> {
   final _emailController = TextEditingController();
   final _passwordController = TextEditingController();
   @override
   dispose(){
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
   }
  
  //signIn
   Future signIn() async{
    await FirebaseAuth.instance.signInWithEmailAndPassword(email: _emailController.text.trim(),
     password: _passwordController.text.trim());
   }


   Future<void> signInWithGoogle() async {
  // Trigger the authentication flow
  final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
  if (googleUser==null){
    return;
  }

  if (googleUser != null && mounted) {
    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth = await googleUser.authentication;


    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // Once signed in, return the UserCredential
    await FirebaseAuth.instance.signInWithCredential(credential);

    // Push the new route only if the widget is still mounted
    if (mounted) {
      Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => chat()),
        (route) => false,
      );
    }
  }
}

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: Center(
          child: Column(children: [
            SizedBox(height: 50,),
           Container(
            height: 150,
            child: Image.asset('images/message-vocal.png'),         
            ), 
          SizedBox(height: 25,),
            //welcom back!
        const  Text('Welcom back !',
           style: TextStyle(
           fontSize: 30,
           ),
           ),
          SizedBox(height: 30,),
            //username textfield
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              controller: _emailController,
              decoration: InputDecoration(
               enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color:  Color.fromARGB(255,255,255,255))
               ) ,
               fillColor:   Colors.grey[50],
               filled: true,
               hintText: "Email ",hintStyle: TextStyle(color: Color.fromARGB(174, 0, 0, 0))
              ),
            ),
          ),
          SizedBox(height: 10,),
        
             //password textfield
           Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              controller: _passwordController,
              decoration: InputDecoration(
               enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color:  Color.fromARGB(255,255,255,255))
               ) ,
               fillColor:   Colors.grey[50],
               filled: true,
               hintText: "Password ",hintStyle: TextStyle(color:  Color.fromARGB(174, 0, 0, 0)),
              ),
            ),
          ),
           SizedBox(height: 15,),
            // sign in button 
          mybutton(
            onTap:signIn ,
          ),
          SizedBox(height: 10,),
            //or continue with 
          Text('Or continue with'),
           SizedBox(height: 5,),
            //google or facebook
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
           children: [
            //google
             google(
             onTap: signInWithGoogle,
             ),
            
             SizedBox(width: 15,),
              Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(border: Border.all(color: Colors.white),
                 borderRadius: BorderRadius.circular(16),
                 color: Colors.grey[50],
              ),
              
              child: Image.asset('images/face.png',
              height: 50,
              ),
            ),
           ],
          ),
           //not a member ? regester now
             SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('not a member ?'),
              SizedBox(width: 5,),
              GestureDetector(
                 onTap: () {
                  Navigator.push(context, 
                  MaterialPageRoute(builder: (context)=> Register())
                  );
                 },
                child: Text('Register now',style: TextStyle(
                  color: Color.fromARGB(195, 195, 163, 255),fontWeight:FontWeight.bold 
                ),),
              )
            ],
          )   
          ],),
        ),
      ),
    );
  }
}