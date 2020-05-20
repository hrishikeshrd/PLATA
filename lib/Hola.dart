import 'Bottombar.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';


class HolaScreen extends StatefulWidget {
  @override
  _HolaScreenState createState() => _HolaScreenState();
}

class _HolaScreenState extends State<HolaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body:  Center(
          child: FadeAnimatedTextKit(
              text: ["HOLA","HELLO","NAMASTE"],
              textStyle: TextStyle(color: Colors.white,fontSize: 30, fontWeight: FontWeight.w900,letterSpacing:5 ),
              duration: Duration(milliseconds: 400),
              pause: Duration(milliseconds: 0),
              onFinished: () => Navigator.push(context,new MaterialPageRoute(builder: (_) => MainScreens(),),),
              alignment: Alignment.center,
              totalRepeatCount: 1,

            ),
        ),
        
      
    );
  }
}