


import 'package:flutter/material.dart';

import 'package:job/%D8%B5%D9%81%D8%AD%D8%A7%D8%AA%20%D8%A7%D9%84%D8%AA%D9%86%D9%82%D9%84/Profile%20page%20coding/Personal%20Information.dart';

class PROFILE extends StatefulWidget {
  PROFILE({Key? key}) : super(key: key);

  @override
  State<PROFILE> createState() => _PROFILEState();
}

class _PROFILEState extends State<PROFILE> {
  final _opacity = 1.0;
  final _xOffset = 0.0;
  final _yOffset = 0.0;
  // ignore: unused_field
  final _blurRadius = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Stack(children: [
            // Container(
            //   height: double.infinity,
            //   width: 500,
            //   color: Colors.red
            // ),
            Container(
                height: 590,
                width: 500,
                decoration: const BoxDecoration(

                   gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 255, 177, 60),
                Color.fromARGB(255, 255, 177, 60),
                Color.fromARGB(255, 94, 174, 240),
                Color.fromARGB(255, 94, 174, 240),
              ]),
                  // color: Color(0xFF000080),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(90),
                  ),
                ),
                child: Column(
                  children:  [
                     const Padding(
                      padding: EdgeInsets.only(top: 420, left: 20),
                      child: Text(
                        'Employers are not able to search your profile !',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.white),
                      ),
                    ),
                     const Padding(
                      padding: EdgeInsets.only(top: 20, left: 30,right: 20),
                      child: Text(
                        "You are missing out on opportunities.Start appearing in employer's search now!",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 230,top: 30),
                      child: MaterialButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          color: Colors.white,
                          onPressed: (() {}),
                          child: Text(
                            'Complete Profile',
                            style: TextStyle(
                                fontStyle: FontStyle.italic,
                                shadows: [
                                  Shadow(
                                      color:
                                          Colors.blue.shade900.withOpacity(_opacity),
                                      offset: Offset(_xOffset, _yOffset),
                                      blurRadius: 90),
                                ],
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          )),
                    ),
                  ],
                )),
            Container(
              height: 400,
              decoration: const BoxDecoration(
                 gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 255, 177, 60),
                Color.fromARGB(255, 255, 177, 60),
                   Color.fromARGB(255, 255, 177, 60),
                Color.fromARGB(255, 255, 177, 60),
                // Color.fromARGB(255, 94, 174, 240),
                // Color.fromARGB(255, 94, 174, 240),
              ]),
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(90),
                  bottomLeft: Radius.circular(90),
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 32),
                    child: ListTile(
                        onTap: (() {Navigator.of(context)
                          .pushNamed('PersonalInformationEdit');}),
                        leading: Text(''),
                        trailing: const Icon(
                          Icons.edit_outlined,
                          color: Colors.black,
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text('Add Education',style:TextStyle(
                                  color: Colors.white,),),
                        ),
                        title: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            'Add Name',
                            style: TextStyle(
                                  color: Colors.black,
                                fontStyle: FontStyle.italic,
                                shadows: [
                                  Shadow(
                                      color:
                                          Colors.blue.shade900.withOpacity(_opacity),
                                      offset: Offset(_xOffset, _yOffset),
                                      blurRadius: 90),
                                ],
                                fontWeight: FontWeight.bold),
                          ),
                        )),
                  ),
                  ListTile(
                      onTap: (() {Navigator.of(context)
                          .pushNamed('PersonalInformationEdit');}),
                      leading: const Icon(
                        Icons.location_on_outlined,
                           color: Colors.black,
                      ),
                      trailing: TextButton(
                  onPressed: () {Navigator.of(context)
                          .pushNamed('PersonalInformationEdit');},
                  child: Text('Add',style: TextStyle(
                           fontStyle: FontStyle.italic,
                              color: Colors.black,
                          shadows: [
                          Shadow(
                            color: Colors.red.withOpacity(_opacity),
                            offset: Offset(_xOffset, _yOffset),
                            blurRadius: 90,
                          ),
                        ], fontSize: 20, 
                        
                        ),),
                ),
                      title: Text(
                        'Current Location',
                        style: TextStyle(
                              color: Colors.black,
                            fontStyle: FontStyle.italic,
                            shadows: [
                              Shadow(
                                  color: Colors.blue.shade900.withOpacity(_opacity),
                                  offset: Offset(_xOffset, _yOffset),
                                  blurRadius: 90),
                            ],
                            fontWeight: FontWeight.bold),
                      )),
                  ListTile(
                      onTap: (() {}),
                      leading: Icon(
                        Icons.email_outlined,
                           color: Colors.black,
                      ),
                      trailing: TextButton(
                  onPressed: () {Navigator.of(context)
                          .pushNamed('PersonalInformationEdit');},
                  child: Text('Add',style: TextStyle(
                           fontStyle: FontStyle.italic,
                              color: Colors.black,
                          shadows: [
                          Shadow(
                            color: Colors.red.withOpacity(_opacity),
                            offset: Offset(_xOffset, _yOffset),
                            blurRadius: 90,
                          ),
                        ], fontSize: 20, 
                        
                        ),),
                ),
                      title: Text(
                        'Add Email',
                        style: TextStyle(
                              color: Colors.black,
                            fontStyle: FontStyle.italic,
                            shadows: [
                              Shadow(
                                  color: Colors.blue.shade900.withOpacity(_opacity),
                                  offset: Offset(_xOffset, _yOffset),
                                  blurRadius: 90),
                            ],
                            fontWeight: FontWeight.bold),
                      )),
                  ListTile(
                      onTap: (() {}),
                      leading: const Icon(
                        Icons.phone_outlined,
                            color: Colors.black,
                      ),
                      trailing:TextButton(
                  onPressed: () {Navigator.of(context)
                          .pushNamed('PersonalInformationEdit');},
                  child: Text('Add',style: TextStyle(
                           fontStyle: FontStyle.italic,
                              color: Colors.black,
                          shadows: [
                          Shadow(
                            color: Colors.red.withOpacity(_opacity),
                            offset: Offset(_xOffset, _yOffset),
                            blurRadius: 90,
                          ),
                        ], fontSize: 20, 
                        
                        ),),
                ),
                      title: Text(
                        'Mobile Number',
                        style: TextStyle(
                              color: Colors.black,
                            fontStyle: FontStyle.italic,
                            shadows: [
                              Shadow(
                                  color: Colors.blue.shade900.withOpacity(_opacity),
                                  offset: Offset(_xOffset, _yOffset),
                                  blurRadius: 90),
                            ],
                            fontWeight: FontWeight.bold),
                      )),
                  Padding(
                    padding: const EdgeInsets.all(30),
                    child: MaterialButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                           color: Colors.black,
                        onPressed: (() {}),
                        child: Text(
                          'Save',
                          style: TextStyle(
                              fontStyle: FontStyle.italic,
                              shadows: [
                                Shadow(
                                    color:
                                        Colors.blue.shade900.withOpacity(_opacity),
                                    offset: Offset(_xOffset, _yOffset),
                                    blurRadius: 90),
                              ],
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        )),
                  ),
                ],
              ),
            ),
          ]),

          Container(child: PersonalInformation()),
        ],
      ),
    );
  }
}
