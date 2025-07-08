import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


import '../slide1.dart';
import 'intro/slide2.dart';


class Slide1 extends StatefulWidget {
  Slide1({Key? key}) : super(key: key);

  @override
  State<Slide1> createState() => _Slide1State();
}

class _Slide1State extends State<Slide1> {
  PageController _controller = PageController();
  bool onLastPage = false;
  final _opacity = 1.0;
  final _xOffset = 0.0;
  final _yOffset = 0.0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        PageView(
          
          controller: _controller,
          onPageChanged: ((index) {
            setState(() {
              onLastPage = (index ==1);
            });
          }),
        children :[
        Sidee1(),
        Sidee2(),
        // Sidee3(),
        ]
      ),
      Container(
        alignment: Alignment(0,0.90),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: (() {
                _controller.jumpToPage(1);
              }

            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30)),
              
              child: Text('Skip',style:  TextStyle(fontSize: 20,fontWeight: FontWeight.bold ,fontStyle: FontStyle.italic,
                        color: Colors.black,
                        shadows: [
                          Shadow(
                            color: Colors.blue.withOpacity(_opacity),
                            offset: Offset(_xOffset, _yOffset),
                            blurRadius: 20,
                          ),
                        ],),)),
            ),
            SmoothPageIndicator(controller: _controller, count: 2),
            
            onLastPage 
            ? GestureDetector(
              onTap: (() {
                Navigator.of(context).pushNamed("First");
                _controller.nextPage(duration: Duration(milliseconds: 500), curve: Curves.easeIn);
              }


            ),
            child: Text('Done',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold ,fontStyle: FontStyle.italic,
                        color: Colors.black,
                        shadows: [
                          Shadow(
                            color: Colors.blue.withOpacity(_opacity),
                            offset: Offset(_xOffset, _yOffset),
                            blurRadius: 20,
                          ),
                        ],),),
            )
            :GestureDetector(
              onTap: (() {
                
                _controller.nextPage(duration: Duration(milliseconds: 500), curve: Curves.easeIn);
              }


            ),
            child: Text(''),
            ),
          ],
        )),
      ],)
    );
  }
}