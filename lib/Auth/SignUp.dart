
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Container(
        
        // constraints: BoxConstraints.expand(width: double.infinity),
        // decoration: BoxDecoration(
        //   gradient: LinearGradient(
        //       begin: Alignment.topCenter,
        //       end: Alignment.bottomCenter,
        //       colors: [  Color.fromARGB(255, 255, 177, 60),
        //             Color.fromARGB(255, 255, 177, 60),
        //             Color.fromARGB(255, 94, 174, 240),
        //           Color.fromARGB(255, 94, 174, 240),]),
        //   //
        // ),
        child: Column(
          children: [
          
            
                    Container(
                      
                      margin: EdgeInsets.only(top: 150,left:20 ,right: 20,),
              
                child: Text(
                  "Create Your Account ! ",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 45,
                       color: Color(0xFF000080),
                      ),
                )),
             Image.asset("assets/images/jjj.jpg"),
            // Container(
            //   alignment: Alignment.centerLeft,
            //     margin: const EdgeInsets.only(
            //       left: 20,
            //       top: 0,
                 
            //     ),
            //     child: Text(
            //       "SignUp as :",
            //       style: TextStyle(
            //           fontSize: 30,
            //           color: Color(0xFF000080),
            //           ),
            //     )),
                
            Container(
              margin: EdgeInsets.only(top: 20),
                
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed("Userpage");
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF000080),
                      padding: EdgeInsets.symmetric(horizontal: 100),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(90))),
                  child: const Text(
                    "Customer",
                    style: TextStyle(fontSize: 20,color: Colors.white),
                  ),
                )),
            const Text(
              "--OR--",
              style: TextStyle(
                  fontSize: 15,
                  color: Color(0xFF000080),
                  fontWeight: FontWeight.bold),
            ),
            Container(
                child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed("Company");
              },
              child: Text(
                "Company",
                style: TextStyle(fontSize: 20,color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF000080),
                  padding: EdgeInsets.symmetric(horizontal: 100),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(90))),
            )),
          ],
        ),
      ),
    );
  }
}
