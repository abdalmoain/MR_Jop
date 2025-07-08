import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
class Bus extends StatefulWidget {
  Bus({Key? key}) : super(key: key);

  @override
  State<Bus> createState() => _BusState();
}

class _BusState extends State<Bus> {
    final _opacity = 1.0;
  final _xOffset = 0.0;
  final _yOffset = 0.0;
  // final _blurRadius = '';
  bool _iconBool = false;
  IconData _iconLight = Icons.wb_sunny;
  IconData _iconDark = Icons.nights_stay;
  ThemeData _LightTheme = ThemeData(
    primarySwatch: Colors.amber,
    brightness: Brightness.light,
  );
  ThemeData _darkThem = ThemeData(
    primarySwatch: Colors.red,
    brightness: Brightness.dark
  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:_iconBool ? _darkThem : _LightTheme,
home: Scaffold( appBar: AppBar(
  leading: IconButton(icon: Icon(Icons.arrow_back_ios_new,color: Colors.white,),onPressed:(() {
    Navigator.of(context).pushNamed("Trwada");
  } ),),

  actions: [IconButton(onPressed: (() {
    setState(() {
      _iconBool =!_iconBool;
    });
    
  }), icon: Icon(_iconBool ? _iconDark : _iconLight))],
),
    body: Container(
        constraints: const BoxConstraints.expand(width: double.infinity),
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
        ),
        child: ListView(
          children: [
            Container(
                  height: 300,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    
                      image: DecorationImage(
                          image: AssetImage("assets/images/Trwada1.jpg"),
                          fit: BoxFit.fill)),
                          
                ),
                 Container(
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 20),
                  child: Text(
                    "Description : A bus driver is required to work for Trwada Transport Company",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      shadows: [
                        Shadow(
                            color: Colors.black,
                            offset: Offset(2, 3),
                            blurRadius: 50)
                      ],
                    ),
                  ),
                ),
                 Padding(
                   padding: const EdgeInsets.only(top: 40),
                   child: ListTile(
                    leading: Icon(Icons.price_check),
                    trailing: Text(" Travel to the Cities"),
                    title: Text(
                      "Field of work:",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        shadows: [
                          Shadow(
                              color: Colors.black,
                              offset: Offset(2, 3),
                              blurRadius: 50)
                        ],
                      ),
                    ),
                ),
                 ),
                ListTile(
                   leading: Icon(Icons.lock_clock_rounded),
                  trailing: Text(" Between 30 - 60 Years"),
                  title: Text(
                    "Age : ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      shadows: [
                        Shadow(
                            color: Colors.black,
                            offset: Offset(2, 3),
                            blurRadius: 50)
                      ],
                    ),
                  ),
                ),
                ListTile(
                   leading: Icon(Icons.check),
                  trailing: Text(" 7-10 years of Drive "),
                  title: Text(
                    "Experience ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      shadows: [
                        Shadow(
                            color: Colors.black,
                            offset: Offset(2, 3),
                            blurRadius: 50)
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: MaterialButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(80.0),
                  ),
                  color: Colors.black,
                  onPressed: (() {AwesomeDialog(
            context: context,
            dialogType: DialogType.question,
            animType: AnimType.rightSlide,
            title: 'It takes a week ....',
             desc: 'Are You Sure ?',
            btnCancelOnPress: () {},
            btnOkOnPress: () {AwesomeDialog(
            context: context,
            dialogType: DialogType.success,
            animType: AnimType.leftSlide,
            title: 'DONE',
            //  desc: 'Are You Sure ?',
            btnCancelOnPress: () {},
            btnOkOnPress: () {},
            )..show();},
            )..show();}),
                  child: Text(
                    'Upload your CV',
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
        ),])))
   
        
    );
  }
}