
import 'package:flutter/material.dart';
import 'package:untitled36/Login.dart';
import 'package:untitled36/my_buttom.dart';
class Register extends StatefulWidget {
  const Register ({super.key});

  @override
  State<Register > createState() => _RegisterState();
}
class _RegisterState extends State<Register > {
  
  //signIn
   signUp() {}
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
        const  Text('Create an Account!',
           style: TextStyle(
           fontSize: 30,
           ),
           ),
          SizedBox(height: 30,),
            //username textfield
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              decoration: InputDecoration(
               enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color:  Color.fromARGB(255,255,255,255))
               ) ,
               fillColor:   Colors.grey[50],
               filled: true,
               hintText: "Username ",hintStyle: TextStyle(color: Color.fromARGB(174, 0, 0, 0))
              ),
            ),
          ),
          SizedBox(height: 5,),
        
             //password textfield
           Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
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
       SizedBox(height: 5,),
           Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              decoration: InputDecoration(
               enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color:  Color.fromARGB(255,255,255,255))
               ) ,
               fillColor:   Colors.grey[50],
               filled: true,
               hintText: "Confirm Password ",hintStyle: TextStyle(color:  Color.fromARGB(174, 0, 0, 0)),
              ),
            ),
          ),
           SizedBox(height: 15,),
            // sign in button 
          mybutton1(
            onTap:signUp ,
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
            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(border: Border.all(color: Colors.white),
                 borderRadius: BorderRadius.circular(16),
                color: Colors.grey[50],
              ),
              child: Image.asset('images/google.png',
              height: 50,
              ),
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
              Text('Alredy have accont?'),
              SizedBox(width: 5,),
              GestureDetector(
                 onTap: () {
                  Navigator.push(context, 
                  MaterialPageRoute(builder: (context)=> Login())
                  );
                 },
                child: Text('Login now',style: TextStyle(
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