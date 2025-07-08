

import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import 'package:flutter/material.dart';
import 'package:job/%D8%B5%D9%81%D8%AD%D8%A7%D8%AA%20%D8%A7%D9%84%D8%AA%D9%86%D9%82%D9%84/HomePageCoding/HomePageHeader.dart';

import 'package:job/%D8%B5%D9%81%D8%AD%D8%A7%D8%AA%20%D8%A7%D9%84%D8%AA%D9%86%D9%82%D9%84/PROFILE.dart';

import '../../صفحات التنقل/Setting.dart';


class Castomers extends StatefulWidget {
  const Castomers({Key? key}) : super(key: key);

  @override
  State<Castomers> createState() => _CastomersState();
}

class _CastomersState extends State<Castomers> {
  @override
  // ignore: override_on_non_overriding_member
  List<Widget> mypages = [HomePageHeader(), PROFILE(), SettingsScreen()];
  int Selectedindex = 1;

  //  final Screens= [
  //          PopulorJobs(),
  //          PROFILE(),
  //          Notifications(),

  //     ];
  final items = [
    Icon(Icons.home),
    Icon(Icons.person),
    Icon(Icons.settings),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(backgroundColor: Colors.black,animationCurve: Curves.fastOutSlowIn ,
        // color: Color.fromARGB(255, 255, 177, 60),
    
        height: 50,
        index: Selectedindex,
        items: items,
        onTap: ((index) {
          setState(() {
            Selectedindex = index;
          });
        }),
      ),
      body: mypages[Selectedindex],
    );
  }
}
