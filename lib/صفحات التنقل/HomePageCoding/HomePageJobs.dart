

import 'package:flutter/material.dart';

class HomePageFreelance extends StatefulWidget {
  HomePageFreelance({Key? key}) : super(key: key);

  @override
  State<HomePageFreelance> createState() => _HomePageFreelanceState();
}

class _HomePageFreelanceState extends State<HomePageFreelance> {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30),
      height: 500,
      width:double.infinity,
      
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Padding(
                  padding: const EdgeInsets.only(top: 0, left: 15,right: 15),
                  child:  Container(
                decoration:
                 BoxDecoration(
                  
               border: Border.all(color: Colors.black26,style: BorderStyle.solid,width: 3 ),),
                        
                child:ListTile(leading:    Text(
                  "Free Lance",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold,   shadows: [
                Shadow(
                  color: Colors.black,
                  offset: Offset(2, 3),
                  blurRadius: 50)
            ],),
                ),
                trailing: InkWell(
                  onTap: (() {
                    
                  }),
                  child: Text("View All",style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold,color: Colors.white,  shadows: [
                Shadow(
                  color: Colors.black,
                  offset: Offset(2, 3),
                  blurRadius: 30)
            ],),),
                ),
                
                
                ),
              
            ),
                
     
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
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
                          image: DecorationImage(image: AssetImage("assets/images/blogging.png"),fit: BoxFit.cover)
                                
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
                          image: DecorationImage(image: AssetImage("assets/images/Graphic.jpg"),fit: BoxFit.cover)
                                
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
                          image: DecorationImage(image: AssetImage("assets/images/photograph.jpg"),fit: BoxFit.cover)
                                
                          ),
                        
                                    ),
                                       Container(
                                      margin: EdgeInsets.only(top: 16, left: 20),
                                      width: 230,
                                      height: 190,
                                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                          color: Colors.white,
                          image: DecorationImage(image: AssetImage("assets/images/Backend.png"),fit: BoxFit.cover)
                                
                          ),
                        
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 16, left: 20),
                                      width: 230,
                                      height: 190,
                                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                          color: Colors.white,
                          image: DecorationImage(image: AssetImage("assets/images/Front.jpg"),fit: BoxFit.cover)
                                
                          ),
                        
                                    ),
                      ],
                    ),
                  ),
        ],
      ),


              
            );
   
  
   
  }
}
