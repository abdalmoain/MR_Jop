import 'package:flutter/material.dart';

class WriteCv extends StatefulWidget {
  WriteCv({Key? key}) : super(key: key);

  @override
  State<WriteCv> createState() => _WriteCvState();
}

class _WriteCvState extends State<WriteCv> {
  final _opacity = 1.0;
  final _xOffset = 0.0;
  final _yOffset = 0.0;
  // ignore: unused_field
  final _blurRadius = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0,backgroundColor:   Color.fromARGB(255, 255, 177, 60),
      leading: IconButton(icon:Icon(Icons.arrow_back_ios,color: Colors.black,) ,onPressed: () {
        Navigator.of(context).pushNamed("Castomers");
      },),
      ),
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 255, 177, 60),
                Color.fromARGB(255, 255, 177, 60),
                Color.fromARGB(255, 94, 174, 240),
                Color.fromARGB(255, 94, 174, 240),
              ]),),
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
             
              child: Column(
                children:  [
                  Padding(
                    padding: EdgeInsets.only(top: 20, left: 10),
                    child: Text(
                      'CV Headline',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15, top: 20),
                    child: Text(
                      'Give an introductory title to your profile to be viewed by Employers',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 30, right: 30, top: 20),
                    child: 
                    TextFormField(
                      
                      maxLines: 1,
                      maxLength: 90,
                      textAlign: TextAlign.start,
                      decoration: InputDecoration(
                        helperText:'Give ypur profile a on line description',
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.lightBlue)),
                        hintText: 'Write here...',
                        hintStyle: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),

                ],
              ),
            ),
            Expanded(
              child: SizedBox(
                height: 470,
              ),
            ),
            Container(
              width: 400,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: MaterialButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(80.0),
                  ),
                  color: Colors.black,
                  onPressed: (() {}),
                  child: Text(
                    'Save',
                    style: TextStyle(
                        fontStyle: FontStyle.italic,
                        shadows: [
                          Shadow(
                              color: Colors.blue.shade900.withOpacity(_opacity),
                              offset: Offset(_xOffset, _yOffset),
                              blurRadius: 90),
                        ],
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),),
            ),
          ],
        ),
      ),
    );
  }
}
