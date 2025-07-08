import 'package:flutter/material.dart';

class Page3 extends StatefulWidget {
  Page3({Key? key}) : super(key: key);

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  final _opacity = 1.0;
  final _xOffset = 0.0;
  final _yOffset = 0.0;
  // final _blurRadius = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body:
    
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
          "Instruction 2",
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
        margin: EdgeInsets.only(left: 20,right: 20),
        height: 130,
        child: Text("Work is considered one of the basic tasks in a persons life because it helps him provide his needs of food, clothing, and others"
            ,style: TextStyle(
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
                Icon(
            Icons.brightness_1_outlined,color: Colors.white,
          ),
              Icon(Icons.brightness_1, color: Colors.black),
    
      
          Icon(Icons.brightness_1_outlined,color: Colors.white,)
        ],
      ),
      Container(
          child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).pushNamed("Page4");
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
