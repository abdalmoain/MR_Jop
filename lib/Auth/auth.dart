

// import 'dart:async';

// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';

// class Verfiy extends StatefulWidget {
//   Verfiy({Key? key}) : super(key: key);

//   @override
//   State<Verfiy> createState() => _VerfiyState();
// }

// class _VerfiyState extends State<Verfiy> {
//   final auth = FirebaseAuth.instance;
//   late User user;
//   late Timer timer;
//   @override
//   void initState() {
//     user = auth.currentUser!;
//     user.sendEmailVerification();
//     Timer.periodic(Duration(seconds: 5), (timer) { });
//     checkEmailVerified();
//     super.initState();
//   } 
//   @override
//   void dispose() {
//    timer.cancel();
//     super.dispose();
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
//   Future <void> checkEmailVerified ()async{
//     user = auth.currentUser!;
//     await user.reload();
//     if (user.emailVerified){
//       timer.cancel();
//       Navigator.of(context).pushNamed("Castomers");
//     }
//    }
// }