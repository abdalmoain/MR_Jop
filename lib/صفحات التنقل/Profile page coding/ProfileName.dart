import 'package:flutter/material.dart';

class PROFILENAME extends StatefulWidget {
  PROFILENAME({Key? key}) : super(key: key);

  @override
  State<PROFILENAME> createState() => _PROFILENAMEState();
}

class _PROFILENAMEState extends State<PROFILENAME> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 255, 177, 60),
                Color.fromARGB(255, 255, 177, 60),
                Color.fromARGB(255, 94, 174, 240),
                Color.fromARGB(255, 94, 174, 240),
              ]),),
              child:Column(
                children: [
Padding(
  padding:  EdgeInsets.only(top: 100),
  child:   Text("Full Name"),
),
                  Padding(
                    padding: const EdgeInsets.only(top: 100),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'First Name',
                        
                        hintStyle: TextStyle(color:Colors.white)
                      ),
                    ),
                  )
                ],
              ) ,
      ),
    );
  }
}