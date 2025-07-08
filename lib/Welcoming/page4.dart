import 'package:flutter/material.dart';

class Page4 extends StatefulWidget {
  Page4({Key? key}) : super(key: key);

  @override
  State<Page4> createState() => _Page4State();
}

class _Page4State extends State<Page4> {
   final _opacity = 1.0;
  final _xOffset = 0.0;
  final _yOffset = 0.0;
 
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
          "Instruction 3",
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
        margin: EdgeInsets.only(left: 20,right: 20,bottom: 30),
        height: 120,
        child: Text(
            'A large number of young people are looking for a job through which they can meet their needs and provide benefit to their community, but they cannot find it because of the limited job opportunities.',style: TextStyle(
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
      
          Icon(Icons.brightness_1_outlined,color: Colors.white,),
            Icon(Icons.brightness_1, color: Colors.black),
        ],
      ),
      Container(
          child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).pushNamed("First");
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