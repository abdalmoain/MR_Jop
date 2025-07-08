// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:searchfield/searchfield.dart';



class Work extends StatefulWidget {
  Work({Key? key}) : super(key: key);

  @override
  State<Work> createState() => _WorkState();
}

class _WorkState extends State<Work> {
  String? _selectedValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.green,
            ),
            onPressed: () {
              Navigator.of(context).pushNamed("WorkStatus");
            },
          ),
        ),
        body: Container(
          child: ListView(
            children: [
              Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.7,
                      
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(20),
                            child: Text(
                              "Select your Bachelors Course",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.blueGrey),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 20),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.2),
                                    blurRadius: 10,
                                    offset: Offset(0, 10),
                                  ),
                                ]),
                            child: SearchField(
                              onSuggestionTap: (value) {
                                setState(() {
                                  _selectedValue = value as String?;
                                });
                              },
                              hint: 'Select your Bacelors Course',
                              searchInputDecoration: SearchInputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.blueGrey.shade200, width: 1),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.blue.withOpacity(0.8),
                                        width: 2),
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                              itemHeight: 50,
                              maxSuggestionsInViewPort: 6,
                              suggestionItemDecoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                              suggestions: [],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                        height: 90,
                        padding: EdgeInsets.only(right: 20, left: 20, bottom: 20),
                        decoration: BoxDecoration(color: Colors.white),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                          _selectedValue == null
                              ? Text('Please select a value',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.grey.shade800,
                                      fontWeight: FontWeight.w600))
                              : Text(
                                  _selectedValue!,
                                  style: TextStyle(
                                      color: Colors.grey.shade800,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                          MaterialButton(
                            onPressed: () {},
                            minWidth: 50,
                            height: 50,
                            color: Colors.black,
                            padding: EdgeInsets.all(0),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                            
                            child: Icon(Icons.arrow_forward_ios,size: 24,),
                          )
                        ]))
                  ]),
            ],
          ),
        ));
  }
}
