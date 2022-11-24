import 'dart:async';
import 'dart:ui';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => SecondScreen()));
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Image.asset(
          "assets/app_logo.png",
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: <Color>[
                  Color(0xffAF05FF),
                  Color(0xffDD008C),
                  Color(0xffAF05FF)
                ]),
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 10.0),
              child: Image.asset(
                "assets/home_image.png",
                fit: BoxFit.fitWidth,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 12.0),
              child: Text("Smart Matching",
                  style: TextStyle(
                      fontSize: 30,
                      color: Color(0xff39425B),
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.normal)),
            ),
            Container(
              margin: EdgeInsets.only(top: 12.0),
              child: Text("Find Your Perfect Women Right Now",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 25,
                      color: Color(0xff39425B),
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.normal)),
            ),
            Container(
              width: 300.0,
              height: 50.0,
              margin: EdgeInsets.only(top: 50.0),
              child: ElevatedButton(
                onPressed: () {
                  debugPrint('ElevatedButton Clicked');
                },
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    primary: Color(0xffAF05FF)),
                child: Text("Let’s start",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.normal)),
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 12.0),
                child: RichText(
                  text: TextSpan(
                    text: "By launching and using the app,you agree to our ",
                    style: TextStyle(
                        fontSize: 10,
                        color: Colors.black,
                        fontFamily: "Montserrat"),
                    children: const <TextSpan>[
                      TextSpan(
                          text: "terms",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xffFF4844))),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
