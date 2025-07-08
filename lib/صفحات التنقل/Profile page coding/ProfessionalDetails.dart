import 'dart:ui';

import 'package:flutter/material.dart';

class ProfessionalDetails extends StatefulWidget {
  ProfessionalDetails({Key? key}) : super(key: key);

  @override
  State<ProfessionalDetails> createState() => _ProfessionalDetailsState();
}

class _ProfessionalDetailsState extends State<ProfessionalDetails> {
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
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 30),
          height: 500,
          width: 350,
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
            children: [
              ListTile(
                  leading: const Text(
                    'Cv Details',
                    style: TextStyle(
                        color: Colors.black,
                              fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  trailing: IconButton(
                    onPressed: (() {
                      Navigator.of(context).pushNamed('ProfessionalDetailsEdit');
                    }),
                    icon: const Icon(
                      Icons.edit_outlined,
                      color: Colors.white,
                    ),
                  )),
              const Padding(
                padding: EdgeInsets.only(top: 30, right: 170),
                child: Text(
                  'Tota Work Experience',
                  style: TextStyle(
                  color: Colors.white,
                              fontStyle: FontStyle.italic, fontWeight: FontWeight.w600),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10, right: 200),
                child: Text('0 year 0 Month',style: TextStyle( color: Colors.black,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w600
                              ),
               
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20,right: 250),
                child: Text(
                  'Industry',
                  style: TextStyle(
                             color: Colors.white,
                              fontStyle: FontStyle.italic, fontWeight: FontWeight.w600),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10, left: 3),
                child: Text('Fresher - No Industry Experience / Not Employed',style: TextStyle( color: Colors.black,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w600
                              ),),
              ),
               const Padding(
                padding: EdgeInsets.only(top: 20,right: 210),
                child: Text(
                  'Functional Area',
                  style: TextStyle( color: Colors.white,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w600
                              ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10, left: 20,right: 20),
                child: Text('Fresh Graduates / Mangement Trainee/ intern / No Experience',style: TextStyle( color: Colors.black,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w600
                              ),),
              ),
               const Padding(
                padding: EdgeInsets.only(top: 20,right: 210),
                child: Text(
                  'Monthly Salary',
                  style:TextStyle( color: Colors.white,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w600
                              ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10,right: 230),
                child: Text('0 US Dollar',style: TextStyle( color: Colors.black,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w600
                              ),),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 160,top: 40),
                child: MaterialButton(
                       
                        
                        onPressed: (() {
                          Navigator.of(context).pushNamed('ProfessionalDetailsEdit');
                        }),
                        child: Text(
                          'Add Current Work Level',
                          style: TextStyle(
                              fontStyle: FontStyle.italic,
                              // shadows: [
                              //   Shadow(
                              //       color: Colors.blue.shade900
                              //           .withOpacity(_opacity),
                              //       offset: Offset(_xOffset, _yOffset),
                              //       blurRadius: 90),
                              // ],
                              color:Colors.black,
                              fontWeight: FontWeight.bold),
                        )),
              ),

              Padding(
                padding: const EdgeInsets.only(right: 160,top: 0),
                child: MaterialButton(
                         
                          
                          onPressed: (() {
                            Navigator.of(context).pushNamed('ProfessionalDetailsEdit');
                          }),
                          child: Text(
                            'Add Availability to join',
                            style: TextStyle(
                                fontStyle: FontStyle.italic,
                                // shadows: [
                                //   Shadow(
                                //       color: Colors.blue.shade900
                                //           .withOpacity(_opacity),
                                //       offset: Offset(_xOffset, _yOffset),
                                //       blurRadius: 90),
                                // ],
                                color:Colors.black,
                                fontWeight: FontWeight.bold),
                          )),
              ),
              
            ],
          ),
        ),
       
      ],
    );
  }
}
