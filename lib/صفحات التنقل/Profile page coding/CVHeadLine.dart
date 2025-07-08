import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:job/%D8%B5%D9%81%D8%AD%D8%A7%D8%AA%20%D8%A7%D9%84%D8%AA%D9%86%D9%82%D9%84/Profile%20page%20coding/KeySkills.dart';

class CVHeadLine extends StatefulWidget {
  CVHeadLine({Key? key}) : super(key: key);

  @override
  State<CVHeadLine> createState() => _CVHeadLineState();
}

class _CVHeadLineState extends State<CVHeadLine> {
  final _opacity = 1.0;
  final _xOffset = 0.0;
  final _yOffset = 0.0;
  // final _blurRadius = '';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 180,
          margin: const EdgeInsets.only(left: 10, right: 20, top: 10),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  // Color.fromARGB(255, 255, 177, 60),
                  // Color.fromARGB(255, 255, 177, 60),
                  Color.fromARGB(255, 94, 174, 240),
                  Color.fromARGB(255, 94, 174, 240),
                ]),
            boxShadow: [BoxShadow(blurRadius: 30)],
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
              bottomRight: Radius.circular(20),
              bottomLeft: Radius.circular(20),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 15, top: 20),
                child: Text(
                  'CV Headline',
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 15, top: 20),
                child: Text(
                  'Give an introductory title to your profile to be viewed by Employers',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: MaterialButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      color: Colors.white,
                      onPressed: (() {
                        Navigator.of(context).pushNamed("WriteCv");
                      }),
                      child: Text(
                        'Add',
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
                      )),
                ),
              ),
            ],
          ),
        ),
        Container(
          child: KeySkills(),
        )
      ],
    );
  }
}
