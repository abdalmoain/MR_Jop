import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Bank extends StatefulWidget {
  Bank({Key? key}) : super(key: key);

  @override
  State<Bank> createState() => _BankState();
}

class _BankState extends State<Bank> {
    final _opacity = 1.0;
  final _xOffset = 0.0;
  final _yOffset = 0.0;
   double rating = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Select Your Job"),
        leading: IconButton(
          onPressed: (() {
            Navigator.of(context).pushNamed("Castomers");
          }),
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 255, 177, 60),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        
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
                      image: AssetImage("assets/images/Baank.jpg"),
                      fit: BoxFit.fill)),
            ),
            Container(
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 20),
                  child: Text(
                    "Who Are We :Banque Bemo Saudi Fransi is a Syrian private bank. BBSF was the first operational private bank in Syria in almost 20 years when it launched its operations on January 4, 2004. Its main shareholders are the Lebanese bank Banque Bemo S.A.L. and the Saudi bank Banque Saudi Fransi. ",
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
                ListTile(
                  title: Text("Damascus, Syria"),
                  leading: Text(
                    " Headquarters: : ",
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
                  title: Text(" Bemo Saudi Fransi Finance"),
                  leading: Text(
                    "Subsidiary:  ",
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
                  title: Text("2004"),
                  leading: Text(
                    " Founded: ",
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
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Please rate us : $rating',style:TextStyle(fontSize: 20) ,),
                      RatingBar.builder(
                        itemCount: 5,
                        initialRating:0 ,
                        glow: true,
                        glowColor: Colors.red,
                        updateOnDrag: true,
                        itemPadding: EdgeInsets.symmetric(horizontal: 4),
                        itemSize: 46,
                        minRating: 1,
                        itemBuilder: (context,_)=>Icon(Icons.star,color:Colors.amber ,), 
                        onRatingUpdate: (rating)=>setState(() {
                          this.rating =rating;
                        })),
                    ],
                  ),
                )
              ]),
              height: 400,
              width: 300,
              
            ),
            ListTile(
              leading: Text(
                " Employment Department",
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
              trailing: InkWell(
                onTap: (() {}),
                child: Text(
                  "View All",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    shadows: [
                      Shadow(
                          color: Colors.black,
                          offset: Offset(2, 3),
                          blurRadius: 30)
                    ],
                  ),
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: Row(
                  children: [
                    Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.of(context).pushNamed("Bus");
                          },
                          child: Container(
                            margin: EdgeInsets.only(top: 16, left: 20),
                            width: 160,
                            height: 190,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                  bottomLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20),
                                ),
                                color: Colors.white,
                                image: DecorationImage(
                                    image: AssetImage("assets/images/Cas.jpg",),fit: BoxFit.fill)),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            ),
                            color: Colors.white,
                          ),
                          margin: EdgeInsets.only(left: 16),
                          alignment: Alignment.center,
                          child: Text(
                            "Customer service employee",
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
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.of(context).pushNamed("");
                          },
                          child: Container(
                            margin: EdgeInsets.only(top: 16, left: 20),
                            width: 160,
                            height: 190,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                  bottomLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20),
                                ),
                                color: Colors.white,
                                image: DecorationImage(
                                    image:
                                        AssetImage("assets/images/MAn.png"),
                                    fit: BoxFit.fill)),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            ),
                            color: Colors.white,
                          ),
                          margin: EdgeInsets.only(left: 16),
                          alignment: Alignment.center,
                          child: Text(
                            " Security man",
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
                          ),
                        ),
                      ],
                    ),
                    
                    Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.of(context).pushNamed("");
                          },
                          child: Container(
                            margin: EdgeInsets.only(top: 16, left: 20),
                            width: 160,
                            height: 190,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                  bottomLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20),
                                ),
                                color: Colors.white,
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/Banker.jpg"),fit: BoxFit.fill)),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            ),
                            color: Colors.white,
                          ),
                          margin: EdgeInsets.only(left: 16),
                          alignment: Alignment.center,
                          child: Text(
                            "     Accounter    ",
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
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.of(context).pushNamed("");
                          },
                          child: Container(
                            margin: EdgeInsets.only(top: 16, left: 20),
                            width: 160,
                            height: 190,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                  bottomLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20),
                                ),
                                color: Colors.white,
                                image: DecorationImage(
                                    image:
                                        AssetImage("assets/images/Transfer.jpg"),fit: BoxFit.fill)),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            ),
                            color: Colors.white,
                          ),
                          margin: EdgeInsets.only(left: 16),
                          alignment: Alignment.center,
                          child: Text(
                            "Financial Manager",
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
                          ),
                        ),
                      ],
                    ),
                    // Column(
                    //   children: [
                    //     InkWell(
                    //       onTap: () {
                    //         Navigator.of(context).pushNamed("");
                    //       },
                    //       child: Container(
                    //         margin: EdgeInsets.only(top: 16, left: 20),
                    //         width: 160,
                    //         height: 190,
                    //         decoration: BoxDecoration(
                    //             borderRadius: BorderRadius.only(
                    //               topLeft: Radius.circular(20),
                    //               topRight: Radius.circular(20),
                    //               bottomLeft: Radius.circular(20),
                    //               bottomRight: Radius.circular(20),
                    //             ),
                    //             color: Colors.white,
                    //             image: DecorationImage(
                    //                 image: AssetImage("assets/images/UX.png"),
                    //                 fit: BoxFit.fill)),
                    //       ),
                    //     ),
                    //     Container(
                    //       decoration: BoxDecoration(
                    //         borderRadius: BorderRadius.only(
                    //           topLeft: Radius.circular(20),
                    //           topRight: Radius.circular(20),
                    //           bottomLeft: Radius.circular(20),
                    //           bottomRight: Radius.circular(20),
                    //         ),
                    //         color: Colors.white,
                    //       ),
                    //       margin: EdgeInsets.only(left: 16),
                    //       alignment: Alignment.center,
                    //       child: Text(
                    //         "Buffet worker",
                    //         style: TextStyle(
                    //           fontStyle: FontStyle.italic,
                    //           color: Colors.black,
                    //           shadows: [
                    //             Shadow(
                    //               color: Colors.red.withOpacity(_opacity),
                    //               offset: Offset(_xOffset, _yOffset),
                    //               blurRadius: 90,
                    //             ),
                    //           ],
                    //           fontSize: 20,
                    //         ),
                    //       ),
                    //     ),
                        
                    //   ],
                    // ),
                  ],
                ),
              ),
            ),
      
      ])),
    );
  }
}