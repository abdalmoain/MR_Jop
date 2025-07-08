import 'package:flutter/material.dart';

import 'HomePageJobs.dart';

class HomePageHeader extends StatefulWidget {
  HomePageHeader({Key? key}) : super(key: key);

  @override
  State<HomePageHeader> createState() => _HomePageHeaderState();
}

class _HomePageHeaderState extends State<HomePageHeader> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 30),
              child: Text(
                'Find Jobs',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 10),
              child: Text(
                'Anytime , Anywhere',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20, left: 20, right: 20),
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(30)),
              child: ListTile(
                title: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                leading: Text(
                  'Search by job title, skills or company',
                  style: TextStyle(color: Colors.white, fontSize: 17),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.black26,
                      style: BorderStyle.solid,
                      width: 3,
                      ),
                ),
                child: ListTile(
                  leading: Text(
                    " Local Jobs",
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
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed("Trwada");
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
                              image: AssetImage("assets/images/trwada.jpg"),
                              fit: BoxFit.cover)),
                    ),
                  ),

                  //طروادة للنقل 
                   InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed("Bank");
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
                              image: AssetImage("assets/images/Bank.jpg"),
                              fit: BoxFit.cover)),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed("Google");
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 16, left: 20),
                      width: 190,
                      height: 190,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                          // color: Colors.white,
                          image: DecorationImage(
                              image: AssetImage("assets/images/wadi.png"),
                              fit: BoxFit.cover)),
                    ),
                  ),
                  //جامعة الوادي 

                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed("Google");
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
                              image: AssetImage("assets/images/zone.jpg"),
                              fit: BoxFit.cover)),
                    ),
                  ),
                  //ستدي زون
                ],
              
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.black26,
                      style: BorderStyle.solid,
                      width: 3,
                      // strokeAlign: StrokeAlign.inside
                      ),
                ),
                child: ListTile(
                  leading: Text(
                    " Top Companies",
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
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed("Google");
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
                              image: AssetImage("assets/images/gooogle.png"),
                              fit: BoxFit.cover)),
                    ),
                  ),
                  Container(
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
                            image: AssetImage("assets/images/Microsft.png"),
                            fit: BoxFit.contain)),
                  ),
                  Container(
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
                            image: AssetImage("assets/images/Amazon.png"),
                            fit: BoxFit.contain)),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed("Pharma");
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
                              image: AssetImage("assets/images/Novarties.png"),
                              fit: BoxFit.contain)),
                    ),
                  ),
                  Container(
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
                            image: AssetImage("assets/images/paypal.png"),
                            fit: BoxFit.contain)),
                  ),
                  Container(
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
                            image: AssetImage("assets/images/airoplane.jpg"),
                            fit: BoxFit.fill)),
                  ),
                ],
              ),
            ),
            Container(
              child: HomePageFreelance(),
            )
          ],
        ),
      ),
    );
  }
}
