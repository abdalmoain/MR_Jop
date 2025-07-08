// ignore: file_names
import 'package:flutter/material.dart';

import 'package:fl_country_code_picker/fl_country_code_picker.dart';

class PopulorJobs extends StatefulWidget {
  const PopulorJobs({Key? key}) : super(key: key);

  @override
  State<PopulorJobs> createState() => _PopulorJobsState();
}

class _PopulorJobsState extends State<PopulorJobs> {
  final countryPocker = const FlCountryCodePicker(showDialCode: false);
  
  CountryCode? countryCode;

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      
        body: 
 Container(
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
              //
            ),
            child:
        
        Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
         Container(
              
              margin: EdgeInsets.only(left: 20, right: 20, top: 10),
              child: TextFormField(
                
                style:
                      new TextStyle(fontSize: 22.0, color:Color(0xFF000080),),
                decoration: InputDecoration(
                   filled: true,
                   fillColor: Color(0xFF000080),
                  hintText: 'Search by job title, skills or company',
                  hintStyle:TextStyle(color:Colors.white),
                    prefixIcon: Icon(Icons.search,color: Colors.white,),
                   
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30))),
              ),
            ),
        Container(
                
                margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  style:
                        new TextStyle(fontSize: 22.0, color:Color(0xFF000080),),
                  decoration: InputDecoration(
                    prefixIcon: Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 6),
                margin: EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    GestureDetector(
                      onTap: (() async {
                        final code =
                            await countryPocker.showPicker(context: context);

                        setState(() {
                          countryCode = code;
                        });
                      }),
                      child: Row(
                        children: [
                          // Container(
                          //     child: countryCode != null
                          //         ? countryCode!.flagImage
                          //         : null),
                                  const SizedBox(width: 10,),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 6),
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(5)),
                            child:  Text(
                            countryCode?.dialCode ??"+1",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              labelText: "Enter phone number",
              labelStyle: TextStyle(color: Colors.white),
         
                    filled: true,
                    
                     fillColor: Color(0xFF000080),
                    // hintText: 'All countries',
                    // hintStyle:TextStyle(color:Colors.white),
                      // prefixIcon: Icon(Icons.location_on_outlined,color:Colors.white,),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30))),
                ),
              ),
        TextFormField(
          // keyboardType: TextInputType.number,
          textInputAction: TextInputAction.done,
          maxLines: 1,
          decoration: InputDecoration(
              border: InputBorder.none,
              prefixIcon: Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 6),
                margin: EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    GestureDetector(
                      onTap: (() async {
                        final code =
                            await countryPocker.showPicker(context: context);

                        setState(() {
                          countryCode = code;
                        });
                      }),
                      child: Row(
                        children: [
                          // Container(
                          //     child: countryCode != null
                          //         ? countryCode!.flagImage
                          //         : null),
                                  const SizedBox(width: 10,),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 6),
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 148, 108, 108),
                                borderRadius: BorderRadius.circular(5)),
                            child:  Text(
                            countryCode?.dialCode ??"+1",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              labelText: "Enter phone number",
              labelStyle: TextStyle(color: Colors.grey[600])),
        )
      ],
    )),);
  }
}
