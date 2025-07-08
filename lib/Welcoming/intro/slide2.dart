import 'package:flutter/material.dart';

class Sidee2 extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return (
      Column(
        children: [
              Container(
            margin: EdgeInsets.only(top: 100),
            // child: Text("Join And Start Your Work",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
          ),
          Image(image: AssetImage("assets/images/JOO2.png")),
      
        ],
      ));
  }
}