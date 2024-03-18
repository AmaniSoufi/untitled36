import 'package:flutter/material.dart';

class mybutton extends StatelessWidget {
   Function()? onTap;
     mybutton({super.key,required this.onTap});

  @override
  Widget build(BuildContext context) {
   
    return GestureDetector(
      onTap: onTap,
      child: Container( 
        padding: EdgeInsets.all(25),
        margin: EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
          color: Color.fromARGB(195, 195, 163, 255),
          borderRadius: BorderRadius.circular(8),
      
        ),
        child:const Center(
         child: Text(
            'Sign in ',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}

class mybutton1 extends StatelessWidget {
   Function()? onTap;
     mybutton1({super.key,required this.onTap});

  @override
  Widget build(BuildContext context) {
   
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(25),
        margin: EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
          color: Color.fromARGB(195, 195, 163, 255),
          borderRadius: BorderRadius.circular(8),
      
        ),
        child:const Center(
         child: Text(
            'Register ',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
class google extends StatelessWidget {
  Function()? onTap;
   google ({super.key,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
       onTap: onTap,
      child: Container(
        
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(border: Border.all(color: Colors.white),
                     borderRadius: BorderRadius.circular(16),
                    color: Colors.grey[50],
                  ),
                  child: Image.asset('images/google.png',
                  height: 50,
                  ),
                ),
    );
  }
}




