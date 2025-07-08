import 'package:flutter/material.dart';


class First extends StatefulWidget {
  First({Key? key}) : super(key: key);

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
  final _opacity = 1.0;
  final _xOffset = 0.0;
  final _yOffset = 0.0;
  // final _blurRadius = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
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
            child: Column(children: [
              Container(
                padding: EdgeInsets.only(left: 40, top: 130),
                child: Text(
                  "Let's find a great Job for you ! ",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
                width: double.infinity,
                height: 250,
              ),
              Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/LOgoo.png"),
                        fit: BoxFit.fitWidth)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: MaterialButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    color: Colors.white,
                    onPressed: (() {
                      Navigator.of(context).pushNamed("Userpage");
                    }),
                    child: Text(
                      '        Register        ',
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Colors.black,
                        shadows: [
                          Shadow(
                            color: Colors.red.withOpacity(_opacity),
                            offset: Offset(_xOffset, _yOffset),
                            blurRadius: 90,
                          ),
                        ],
                        fontSize: 20,
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: MaterialButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    color: Colors.white,
                    onPressed: (() {
                      Navigator.of(context).pushNamed("LoginScreen");
                    }),
                    child: Text(
                      '                 Login               ',
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Colors.black,
                        shadows: [
                          Shadow(
                            color: Colors.red.withOpacity(_opacity),
                            offset: Offset(_xOffset, _yOffset),
                            blurRadius: 90,
                          ),
                        ],
                        fontSize: 20,
                      ),
                    )),
              ),
            ])));
  }
}
