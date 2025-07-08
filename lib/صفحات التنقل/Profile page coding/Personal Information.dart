import 'package:flutter/material.dart';
import 'package:job/%D8%B5%D9%81%D8%AD%D8%A7%D8%AA%20%D8%A7%D9%84%D8%AA%D9%86%D9%82%D9%84/Profile%20page%20coding/CVHeadLine.dart';

// ignore: unused_import
import 'ProfessionalDetails.dart';

class PersonalInformation extends StatefulWidget {
  PersonalInformation({Key? key}) : super(key: key);

  @override
  State<PersonalInformation> createState() => _PersonalInformationState();
}

class _PersonalInformationState extends State<PersonalInformation> {
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
          height: 300,
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
            children: [
              ListTile(
                  leading: Text(
                    'Personal Information',
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  trailing: IconButton(
                    onPressed: (() {
                    Navigator.of(context)
                          .pushNamed('PersonalInformationEdit');
                    }),
                    icon: const Icon(
                      Icons.edit_outlined,
                      color: Colors.black
                    ),
                  )),
              ListTile(
                leading: Text(
                  'Birth date',
                  style:TextStyle(
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
              ),
              ListTile(
                leading: Text(
                  'Your nationality',
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
                trailing: TextButton(
                  onPressed: () {Navigator.of(context)
                          .pushNamed('ProfessionalDetailsEdit');},
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
              ),
              ListTile(
                leading: Text(
                  'Residence country',
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
                trailing: TextButton(
                  onPressed: () {Navigator.of(context)
                          .pushNamed('ProfessionalDetailsEdit');},
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
              ),
              ListTile(
                leading: Text(
                  'Visa status',
                  style:TextStyle(
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
                trailing: TextButton(
                  onPressed: () {Navigator.of(context)
                          .pushNamed('ProfessionalDetailsEdit');},
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
              ),
            ],
          ),
        ),
        Container(
          child: CVHeadLine(),
        )
      ],
    );
  }
}
