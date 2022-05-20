import 'dart:async';
import 'package:flutter/material.dart';
import 'package:users_app/authentication/login_screen.dart';
import 'package:users_app/global/global.dart';
import 'package:users_app/mainScreens/main_screen.dart';

class MySplashScreen extends StatefulWidget {
  const MySplashScreen({Key? key}) : super(key: key);

  @override
  _MySplashScreenState createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {
  startTimer() {
    Timer(const Duration(seconds: 3), () async {

      if (await fAuth.currentUser != null) {
        currentFirebaseUser = fAuth.currentUser;
        Navigator.push(
            context, MaterialPageRoute(builder: (c) => MainScreen()));
      } else {
        Navigator.push(
            context, MaterialPageRoute(builder: (c) => LoginScreen()));
      }
    });
  }

  @override
  void initState() {
    super.initState();

    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF2F2F2),
      body: Container(
    
        width: double.maxFinite,
        height: double.maxFinite,
     
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/splashScreen.png"),
           // fit: BoxFit.cover,
          ),
        ),
      ),

      // body: Container(
      //   color: Colors.black,
      //   child: Center(
      //     child: Column(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: [

      //         Image.asset("images/logo1.png"),

      //         const SizedBox(height: 10,),

      //         const Text(
      //           "gUmqubi App",
      //           style: TextStyle(
      //             fontSize: 24,
      //             color: Colors.blueAccent,
      //             fontWeight: FontWeight.bold
      //           ),
      //         ),

      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
