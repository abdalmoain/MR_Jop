import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
   final _opacity = 1.0;
  final _xOffset = 0.0;
  final _yOffset = 0.0;
  // ignore: unused_field
  final _blurRadius = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(body:
    
    Container(
      decoration: BoxDecoration(gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 255, 177, 60),
                Color.fromARGB(255, 255, 177, 60),
                Color.fromARGB(255, 94, 174, 240),
                Color.fromARGB(255, 94, 174, 240),
              ]),),
      child:
    
     Column(children: [

      Container(
        margin: EdgeInsets.only(top: 100),
        width: 400,
        height: 200,
        decoration: BoxDecoration(
          image: DecorationImage(
            
            fit: BoxFit.contain,
            image: AssetImage("assets/images/Logo2.png"),
          ),
        ),
      ),
      Container(
        margin: EdgeInsets.only(top: 200,bottom: 60),
        child: Text(
          "Instruction 1",
          style: TextStyle(
                            fontStyle: FontStyle.italic,
                            color: Colors.black,
                            shadows: [
                              Shadow(
                                color: Colors.red.withOpacity(_opacity),
                                offset: Offset(_xOffset, _yOffset),
                                blurRadius: 90,
                              ),
                            ],
                            fontSize: 20,
                          ),
        ),
      ),
      Container(
        height: 100,
        child: Text(
            'instruction that refer to the user what \n    will he has to do in this Program\n             to achieve his goals',style: TextStyle(
                            fontStyle: FontStyle.italic,
                            color: Colors.black,
                            shadows: [
                              Shadow(
                                color: Colors.red.withOpacity(_opacity),
                                offset: Offset(_xOffset, _yOffset),
                                blurRadius: 90,
                              ),
                            ],
                            fontSize: 20,
                          ),),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
              Icon(Icons.brightness_1, color: Colors.black),
          Icon(
            Icons.brightness_1_outlined,color: Colors.white,
          ),
      
          Icon(Icons.brightness_1_outlined,color: Colors.white,)
        ],
      ),
      Container(
          child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).pushNamed("Page3");
        },
        child: Text(
          "Next",
          style: TextStyle(fontSize: 20,color: Colors.white),
        ),
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black,
            padding: EdgeInsets.symmetric(horizontal: 100),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(90))),
      )),
    ])));
  }
}