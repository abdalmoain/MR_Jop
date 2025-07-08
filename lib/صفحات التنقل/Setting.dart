import 'package:flutter/material.dart';
class SettingsScreen extends StatefulWidget {
  SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( body: Container(
            constraints: BoxConstraints.expand(width: double.infinity),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromARGB(255, 255, 177, 60),
                    Color.fromARGB(255, 255, 177, 60),
                    Color.fromARGB(255, 94, 174, 240),
                  Color.fromARGB(255, 94, 174, 240),
                  ]),
              //
            ),
            child: Column(
              children: [
                SizedBox(height: 70),
                TextField()
              ],
            ),
            )
            
            
            );
  }
}