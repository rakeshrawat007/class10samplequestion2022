import 'dart:async';

import 'package:class10samplequestion2022/screens/landingpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    startTimer();
    super.initState();
  }

  void startTimer() {
    Timer(Duration(seconds: 3), () {
      navigateUser(); //It will redirect  after 3 seconds
    });
  }

  void navigateUser() async{
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LandingPage()));
    }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(alignment: Alignment.center,
                child: Text('(CBSE, STATE BOARD)',style: TextStyle(fontSize: 20),)),

            Container(
              height: 250,width: 250,
                child: Image.asset('lib/assets/images/study.png',fit: BoxFit.fill,)),
            SizedBox(height: 40,),
            Container(alignment: Alignment.center,
                child: Text('CLASS 10TH BOARD PAPERS 2022',style: TextStyle(fontWeight:FontWeight.bold,fontSize: 20),)),
            SizedBox(height: 180,),
            CircularProgressIndicator(

            )
          ],
        ),
      ),
    );
  }
}
