

import 'package:flutter/material.dart';


class Userpage extends StatefulWidget {
  Userpage({Key? key}) : super(key: key);

  @override
  State<Userpage> createState() => _SignUpState();
}

class _SignUpState extends State<Userpage> {

// ignore: unused_field
late String _email, _password ;
  

   String? Cv;
  String? Inf;
// ignore: unused_field
bool _key = false;
  @override


  // ignore: override_on_non_overriding_member
  bool _rememberMe = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
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
            boxShadow: [BoxShadow(blurRadius: 30)],
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
              bottomRight: Radius.circular(20),
              bottomLeft: Radius.circular(20),
            ),
          ),
          height: double.infinity,
          width: double.infinity,
          child:  ListView(
            children: [
              Container(
               
                
                margin: EdgeInsets.only(top: 90,),
                child: Column(children: [
                  Image.asset("assets/images/LOgoo.png",height: 200,width: 400,fit: BoxFit.fitWidth,),

      
                  Container(
                    alignment: Alignment.centerLeft,
              
                    margin: EdgeInsets.only(left: 20, right: 30, top: 80),
                    height: 60.0,
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      style: TextStyle(
                        color: Colors.black
                        // color: Color(0xFF000080),
                      ),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)),
                        contentPadding: EdgeInsets.only(top: 14.0),
                        prefixIcon: Icon(Icons.person, color: Colors.white),
                        hintText: 'First Name',
                        hintStyle: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
          
          
          
                  SizedBox(height: 18.0),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(
                      left: 20,
                      right: 30,
                    ),
                    height: 60.0,
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      style: TextStyle(
                        color:Colors.black,
                        fontFamily: 'OpenSans',
                      ),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)),
                        contentPadding: EdgeInsets.only(top: 14.0),
                        prefixIcon: Icon(Icons.person, color: Colors.white),
                        hintText: 'Last Name',
                        hintStyle: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  //  Container(
                  //   alignment: Alignment.centerLeft,
              
                  //   margin: EdgeInsets.only(left: 20, right: 30, top: 80),
                  //   height: 60.0,
                  //   child: TextField(
                  //     keyboardType: TextInputType.emailAddress,
                  //     style: TextStyle(
                  //       color: Colors.black
                  //       // color: Color(0xFF000080),
                  //     ),
                  //     decoration: InputDecoration(
                  //       border: OutlineInputBorder(
                  //           borderRadius: BorderRadius.circular(30)),
                  //       contentPadding: EdgeInsets.only(top: 14.0),
                  //       prefixIcon: Icon(Icons.person, color: Colors.white),
                  //       hintText: 'First Name',
                  //       hintStyle: TextStyle(color: Colors.white),
                  //     ),
                  //   ),
                  // ),
                  SizedBox(height: 18.0),
                  Container(
                    alignment: Alignment.centerLeft,
                    // decoration: BoxDecoration(
                    //   borderRadius: BorderRadiusDirectional.circular(30),
                    //   color: Colors.black
                    // ),
                    margin: EdgeInsets.only(left: 20, right: 30, top: 0),
                    height: 60.0,
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      style: TextStyle(
                        color: Color(0xFF000080),
                        fontFamily: 'OpenSans',
                      ),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)),
                        contentPadding: EdgeInsets.only(top: 14.0),
                        prefixIcon: Icon(Icons.email, color: Colors.white),
                        hintText: 'Enter Your Email',
                        hintStyle: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(height: 18.0),
                  Container(
                    alignment: Alignment.centerLeft,
                    // decoration: BoxDecoration(
                    //   borderRadius: BorderRadiusDirectional.circular(30),
                    //   color: Color(0xFF000080),
                    // ),
                    margin: EdgeInsets.only(
                      left: 20,
                      right: 30,
                    ),
                    height: 60.0,
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      style: TextStyle(
                        color: Color(0xFF000080),
                        fontFamily: 'OpenSans',
                      ),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)),
                        contentPadding: EdgeInsets.only(top: 14.0),
                        prefixIcon: Icon(Icons.lock, color: Colors.white),
                        hintText: 'Enter Your Password',
                        hintStyle: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Row(
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.only(
                          left: 0,
                        ),
                        height: 20.0,
                        child: Row(
                          children: <Widget>[
                            Theme(
                              data: ThemeData(
                                unselectedWidgetColor: Color(0xFF000080),
                              ),
                              child: Checkbox(
                                value: _rememberMe,
                                checkColor: Colors.black,
                                activeColor: Colors.white,
                                onChanged: (value) {
                                  setState(() {
                                    _rememberMe = value!;
                                  });
                                },
                              ),
                            ),
                            Text('Remember me',
                                style: TextStyle(
                                  color: Colors.black
                                )),
                          ],
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        child: MaterialButton(
                          onPressed: () {
                            Navigator.of(context).pushNamed("LoginScreen");
                          },
                          child: Padding(
                            child: Text('SIGN IN?',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black
                                )),
                            padding: EdgeInsets.only(right: 0.0, left: 150),
                          ),
                        ),
                      )
                    ],
                  ),
                  // Padding(
                  //   padding: EdgeInsets.symmetric(vertical: 30.0),
                  //   child: Row(
                  //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //       children: [
          
                  //       ]),
                  // ),
                  Container(
                    margin: EdgeInsets.only(top: 10, right: 15),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(111)),
                        // primary: Colors.black
                      ),
                      child: Text(
                        "Register",
                        style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 25,color: Colors.white),
                      ),
                      onPressed: () {
                       
      Navigator.of(context).pushNamed("Castomers");
                      
                      }
   ,
               )) ]),
              ),
            ],
          ),
    ));
  }
}
