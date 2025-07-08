import 'package:flutter/material.dart';

import 'ProfessionalDetails.dart';

class KeySkills extends StatefulWidget {
   KeySkills({Key? key}) : super(key: key);

  @override
  State<KeySkills> createState() => _KeySkillsState();
}

class _KeySkillsState extends State<KeySkills> {
    final _opacity = 1.0;
  final _xOffset = 0.0;
  final _yOffset = 0.0;
  // ignore: unused_field
  final _blurRadius = '';
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
                Color.fromARGB(255, 255, 177, 60),
                Color.fromARGB(255, 255, 177, 60),
                // Color.fromARGB(255, 94, 174, 240),
                // Color.fromARGB(255, 94, 174, 240),
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
                  'key skills',
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
                  'Add keywords that define your skills, your strength,things you are good at!',
                  style: TextStyle(color: Colors.black, fontSize: 13),
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
                      color: Colors.black,
                      onPressed: (() {
                        Navigator.of(context).pushNamed("EnterSkills");
                      }),
                      child: Text(
                        'Add',
                        style: TextStyle(
                           fontStyle: FontStyle.italic,
                              color: Colors.white,
                          shadows: [
                          Shadow(
                            color: Colors.red.withOpacity(_opacity),
                            offset: Offset(_xOffset, _yOffset),
                            blurRadius: 90,
                          ),
                        ], fontSize: 20, 
                        
                        ),
                      )),
                ),
              ),
             
            ],
          ),
        ),
         ProfessionalDetails()
      ],
    );
  }
}