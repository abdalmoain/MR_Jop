import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
class Page1 extends StatefulWidget {
  Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  void initState() {
    
    super.initState();
    Future.delayed(Duration(seconds: 5)).then((value) => Navigator.of(context).pushNamed("Slide1"));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              
          Image(
            image: AssetImage("assets/images/LOgoo.png"),
            fit: BoxFit.fill,
          ),
         SizedBox(
          height: 50,
         ),
         SpinKitSpinningLines(
            color: Colors.orange,
            size: 50,
          ),
      
        ]),
      ),
    );
  }
}
