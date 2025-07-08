import 'package:flutter/material.dart';

class Sidee1 extends StatelessWidget {
  // ignore: unused_field
  final _opacity = 1.0;
  // ignore: unused_field
  final _xOffset = 0.0;
  // ignore: unused_field
  final _yOffset = 0.0;
  // ignore: unused_field
  final _blurRadius = '';
  @override
  Widget build(BuildContext context) {
    return  Container(
      // decoration: BoxDecoration(gradient: LinearGradient(
      //         begin: Alignment.topCenter,
      //         end: Alignment.bottomCenter,
      //         colors: [
      //           Color.fromARGB(255, 255, 177, 60),
      //           Color.fromARGB(255, 255, 177, 60),
      //           Color.fromARGB(255, 94, 174, 240),
      //           Color.fromARGB(255, 94, 174, 240),
      //         ]),),
      child:
    
     Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

Image(image:AssetImage("assets/images/LOgooo.png",),fit: BoxFit.fill,)
    
    ]));
  }
}