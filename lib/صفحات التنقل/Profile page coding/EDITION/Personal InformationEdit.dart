import 'package:flutter/material.dart';

class PersonalInformationEdit extends StatefulWidget {
  PersonalInformationEdit({Key? key}) : super(key: key);

  @override
  State<PersonalInformationEdit> createState() =>
      _PersonalInformationEditState();
}

class _PersonalInformationEditState extends State<PersonalInformationEdit> {
  DateTime date = DateTime.now();

  TextEditingController _date = TextEditingController();
  String? Gender;
  String? Sex;
  final _opacity = 1.0;
  final _xOffset = 0.0;
  final _yOffset = 0.0;
  // ignore: unused_field
  final _blurRadius = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed("Castomers");
            },
            icon: Icon(Icons.arrow_back_ios_new)),
        elevation: 0,
        title: Text('Personal information'),
        backgroundColor: Color.fromARGB(255, 255, 177, 60),
      ),
      body: Container(
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
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 260, top: 20),
                child: Text(
                  'Full name :',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'First name',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Last name',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 260, top: 20),
                child: Text(
                  'Birht date :',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
              MaterialButton(
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
                  child: TextFormField(
                    controller: _date,
                    readOnly: true,
                    onTap: () async {
                      DateTime? PickedDate = await showDatePicker(
                          context: context,
                          initialDate: date,
                          firstDate: DateTime(2000),
                          lastDate: DateTime(2100));
                      if (PickedDate != null) return; 
                      
                      setState(() {date =PickedDate!;});
                    },
                    decoration: InputDecoration(
                      hintText: 'Birth date',
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 260, top: 20),
                child: Text(
                  'Gender :',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Row(
                  children: [
                    Text('Male'),
                    Radio(
                        fillColor: MaterialStateProperty.all(
                          Color(0xFF000080),
                        ),
                        value: "Male",
                        groupValue: Gender,
                        onChanged: (val) {
                          setState(() {
                            Gender = val as String?;
                          });
                        }),
                    Text('Female'),
                    Radio(
                        fillColor: MaterialStateProperty.all(
                          Color(0xFF000080),
                        ),
                        value: "Female",
                        groupValue: Gender,
                        onChanged: (val) {
                          setState(() {
                            Gender = val as String;
                          });
                        }),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 200, top: 20),
                child: Text(
                  'Residence Location :',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: TextFormField(
                  decoration: InputDecoration(hintText: ('Type Your Location')),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 250, top: 40),
                child: Text(
                  'Visa status :',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: TextFormField(
                  decoration: InputDecoration(hintText: ('Visa status...')),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 80),
                width: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: MaterialButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(80.0),
                  ),
                  color: Colors.black,
                  onPressed: (() {}),
                  child: Text(
                    'Save',
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
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
