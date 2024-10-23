import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:racipie/homepage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  startTimer() async{
    Timer(Duration(seconds: 3),(){
      //next page code
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Homepage()));
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    // super.initState();

    //sobar age call hobe eta then eta theke baki sob call hobe
    startTimer();
  }
  @override

  Widget build(BuildContext context) {
    return Scaffold(
       body: Center( //full column k center
         child: Column(
           // jinis pati ekdom center e anbo
           crossAxisAlignment: CrossAxisAlignment.center,
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Image.asset("assets/images/recipe_logo.png",
               width: 200,
               height: 200,
             ),
         
             SizedBox(height: 10,),
         
             Text("My Recipie",style: GoogleFonts.acme(
               fontSize: 30,
               fontWeight: FontWeight.bold,
               color: Colors.redAccent,
             )
             ),
             CircularProgressIndicator(
               color: Colors.redAccent,
             ),
           ],
         ),
       ),
    );
  }
}
