import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';

class ProfessionalDetailsEdit extends StatefulWidget {
  ProfessionalDetailsEdit({Key? key}) : super(key: key);

  @override
  State<ProfessionalDetailsEdit> createState() =>
      _ProfessionalDetailsEditState();
}

class _ProfessionalDetailsEditState extends State<ProfessionalDetailsEdit> {
  void selectedItem = 'Select Your University';
  String? Cv;
  String? Inf;
bool _key = false;
// ignore: unused_field
bool _romina =false;

    final _opacity = 1.0;
  final _xOffset = 0.0;
  final _yOffset = 0.0;
  // ignore: unused_field
  final _blurRadius = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 255, 177, 60),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.of(context).pushNamed("Castomers");
          },
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
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
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Center(
                child: Text(
                  'CV Details',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.only(top: 20, left: 30, right: 30),
                child: Text(
                  "Add CV details and increase your chances of getting shortlisted by employers",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, right: 200),
                child: Text(
                  'Total work Experience',
                  style: TextStyle(color: Color(0xFF000080)),
                ),
              ),
              Row(children: const [
                SizedBox(
                  width: 50,
                  child: Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: TextField(
                      decoration: InputDecoration(hintText: '0'),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 40, left: 10),
                  child: Text('Years'),
                ),
                SizedBox(
                    width: 50,
                    child: Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: TextField(
                        decoration: InputDecoration(hintText: '0'),
                      ),
                    )),
                Padding(
                  padding: EdgeInsets.only(top: 40, left: 10),
                  child: Text('Months'),
                ),
              ]),
              Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                  right: 300,
                ),
                child: Text(
                  'industry',
                  style: TextStyle(
                      color:Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                child: DropdownSearch(
                  selectedItem: 'Select Your Industry',
                  popupProps: PopupProps.dialog(),

                  // clearButtonProps:ClearButtonProps(icon: Icon(Icons.clear)) ,

                  items: const [
                    'Engineering Design & Consulting',
                    'Entertainment / Recreation / Them Parks',
                    'Fitnes / Wellness / Gym / Salon / Spa',
                    ' FMCG / Foods / Beverages',
                    'Glass',
                    'General Trading / Export / Import',
                    'Gold / Games & Jewellery',
                    'Hotels / Hosptality',
                    ' IT - Software Services',
                    'IT - Hardware & Networking',
                    'Landscaping',
                    'Elevators / Escalators'
                        'Fresher - No Industry Experience / Not Employed',
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                  right: 250,
                ),
                child: Text(
                  'Functional Area',
                  style: TextStyle(
                      color:Colors.white,fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                child: DropdownSearch(
                  selectedItem: 'Select Your Area',

                  popupProps: PopupProps.dialog(),

                  // clearButtonProps:ClearButtonProps(icon: Icon(Icons.clear)) ,

                  items: const [
                    'Engineering Design & Consulting',
                    'Entertainment / Recreation / Them Parks',
                    'Fitnes / Wellness / Gym / Salon / Spa',
                    ' FMCG / Foods / Beverages',
                    'Glass',
                    'General Trading / Export / Import',
                    'Gold / Games & Jewellery',
                    'Hotels / Hosptality',
                    ' IT - Software Services',
                    'IT - Hardware & Networking',
                    'Landscaping',
                    'Elevators / Escalators'
                        'Fresher - No Industry Experience / Not Employed',
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 260, top: 20),
                child: Text(
                  'you are :',
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
                    Text('Educated'),
                    Radio(
                      
                        fillColor: MaterialStateProperty.all(
                          Color(0xFF000080),
                        ),
                        value: "Vocational",
                        groupValue: Inf,
                        onChanged: (val) {
                          setState(() {
                            Inf = val as String?;
                            _key =!_key;
                          });
                        }),
                    Text('Vocational'),
                    Radio(
                        fillColor: MaterialStateProperty.all(
                          Color(0xFF000080),
                        ),
                        value: "Educated",
                        groupValue: Inf,
                        onChanged: (val) {
                          setState(() {
                            Inf = val as String;
                            _key = !_key;
                          });
                        }),
                  ],
                ),
              ),
      
              _key? Column(
                children: [
                          Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                  right: 270,
                ),
                child: Text(
                  'Certificate :',
                  style: TextStyle(
                      color:Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
                  Container(
                    margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                    child :DropdownSearch(
                      selectedItem: 'Select Your Certificate',

                      popupProps: PopupProps.bottomSheet(
                        showSearchBox: false,
                      ),

                 

                      items: const [
                        'Electrical Engineering',
                        'Environmental Engineering',
                        'Environmental Health & Safety ',
                        'Event Planning',
                        'Finance/Accounting',
                        'Human Resource',
                        'Information Technology/ Computer Engineering',
                        'Innovation',
                        'Law enforcement',
                        'Marketing ',
                        'Mechanical engineering',
                        'Nursing '
                        'Office Administration & Management',
                        'Project Management/ Agile & Scrum',
                        'Quality Assurance (QA)',
                        'Research',
                        'Social / Psychological',
                        'Software Engineering / Developer',
                        'Web Developer / Designer',
                      ],
                    )
                  ),
                   const Padding(
                padding: EdgeInsets.only(
                  top: 20,
                  right: 250,
                ),
                child: Text(
                  'Specialization :',
                  style: TextStyle(
                      color:Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                child:  DropdownSearch(
                  selectedItem: 'Select your specialty',
                  popupProps: PopupProps.bottomSheet(
                    showSearchBox: true,
                  ),
                  items: const [
                    'Advertising/Media/Communication',
                    'Architecture',
                    'Banking/Finance/Accounts',
                    'BPO/Call center',
                    'Pharmaceuticals/Biotech/Health Care',
                    'Marketing',
                    'Industries/Production',
                    'Exclusive',
                    'HR',
                    'Software/Hardware ',
                    'Purchase/Logistics',
                    'Hotel/Tours and Travels',
                    'General',
                   
                  ],
                  
                ),
              ),
               const Padding(
                padding: EdgeInsets.only(
                  top: 20,
                  right: 280,
                ),
                child: Text(
                  'University :',
                  style: TextStyle(
                      color:Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                child:  DropdownSearch(
                  clearButtonProps: ClearButtonProps(icon:Icon (Icons.clear),isVisible: true,),
                  selectedItem: 'Select your University',
                  popupProps: PopupProps.bottomSheet(
                    
                    showSearchBox: false,
                  ),
                  items: const [
                    'Harvard University',
                    'Massachusetts Institute of Technology (MIT)',
                    'Stanford University',
                    'University of Oxford',
                    'University of Cambridge',
                    'California Institute of Technology (Caltech)',
                    'University of California, Berkeley (UCB)',
                    'University of Chicago',
                    'Princeton University',
                    'Columbia University',
                    'Yale University',
                    'University of Pennsylvania',
                    'University College London (UCL)',
                    'Johns Hopkins University',
                    'Imperial College London',
                    'ETH Zurich (Swiss Federal Institute of Technology)',
                    'Cornell University',
                    'Tsinghua University',
                    'University of Toronto',
                    'University of California, Los Angeles (UCLA)',
                    'University of Michigan, Ann Arbor',
                    'Northwestern University',
                    'University of Edinburgh',
                    'Peking University',
                    'New York University (NYU)',
                    'University of Melbourne',
                    'University of California, San Diego (UCSD)',
                    'Duke University',
                    'University of Washington',
                    'National University of Singapore (NUS)',
                    'University of Tokyo',
                    'University of British Columbia',
                    'University of Manchester',
                    'Nanyang Technological University (NTU)',
                   
                  ],
                  
                )
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
                  ),),
            ),
                ],
              ):  SizedBox.shrink(),
   !_key? Column(
                children: [
                          Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                  right: 250,
                ),
                child: Text(
                  'Craftsmanship :',
                  style: TextStyle(
                      color:Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
                  Container(
                    margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                    child :DropdownSearch(
                      selectedItem: 'Select Your Craftsmanship...',

                      popupProps: PopupProps.bottomSheet(
                        showSearchBox: false,
                      ),

                 

                      items: const [
                        'Banner-making',
                        'Canvas work',
                        'Cross-stitch ',
                        'Crocheting',
                        'Curve stitching',
                        'Embroidery',
                        'Knitting',
                        'Lucet'
                        'Macrame',
                        'Millinery ',
                        'Needlepoint',
                        'Patchwork '
                        'Quilting',
                        'Ribbon embroidery',
                        'Rug making',
                        'Sewing',
                        'Shoemaking',
                        'Spinning (textiles)',
                        'Tapestry',
                      ],
                    )
                  ),
                   const Padding(
                padding: EdgeInsets.only(
                  top: 20,
                  right: 230,
                ),
                child: Text(
                  'Experince Years :',
                  style: TextStyle(
                      color:Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                child:  TextFormField(
decoration: InputDecoration(
  hintText: 'Working years...'
),
                )
              ),
               const Padding(
                padding: EdgeInsets.only(
                  top: 20,
                  right: 260,
                ),
                child: Text(
                  'Current work :',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
                          Container(
                margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                child:  TextFormField(
decoration: InputDecoration(
  hintText: 'Your current work...'
),
                )
              ),
                const Padding(
                padding: EdgeInsets.only(
                  top: 20,
                  right: 290,
                ),
                child: Text(
                  'Last work :',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
                          Container(
                margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                child:  TextFormField(
decoration: InputDecoration(
  hintText: 'Your Last work...'
),
                )
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
                  ),),
            ),
                ],
              ):  SizedBox.shrink(),
            ],
          ),
        ),
      ),
    );
  }
}
