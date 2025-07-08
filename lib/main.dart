
import 'package:flutter/material.dart';
import 'package:job/%D8%B5%D9%81%D8%AD%D8%A7%D8%AA%20%D8%A7%D9%84%D8%AA%D9%86%D9%82%D9%84/HomePageCoding/JOBPAges/Bank/Bank.dart';
import 'package:job/%D8%B5%D9%81%D8%AD%D8%A7%D8%AA%20%D8%A7%D9%84%D8%AA%D9%86%D9%82%D9%84/HomePageCoding/JOBPAges/Google.dart';
import 'package:job/%D8%B5%D9%81%D8%AD%D8%A7%D8%AA%20%D8%A7%D9%84%D8%AA%D9%86%D9%82%D9%84/HomePageCoding/JOBPAges/Pharma/Pharma.dart';
import 'package:job/%D8%B5%D9%81%D8%AD%D8%A7%D8%AA%20%D8%A7%D9%84%D8%AA%D9%86%D9%82%D9%84/HomePageCoding/JOBPAges/Trwada/Bus.dart';
import 'package:job/%D8%B5%D9%81%D8%AD%D8%A7%D8%AA%20%D8%A7%D9%84%D8%AA%D9%86%D9%82%D9%84/HomePageCoding/JOBPAges/Trwada/Trwada.dart';
import 'package:job/%D8%B5%D9%81%D8%AD%D8%A7%D8%AA%20%D8%A7%D9%84%D8%AA%D9%86%D9%82%D9%84/Profile%20page%20coding/EDITION/ProfessionalDetailsEdit.dart';
import 'package:job/%D8%B5%D9%81%D8%AD%D8%A7%D8%AA%20%D8%A7%D9%84%D8%AA%D9%86%D9%82%D9%84/Profile%20page%20coding/Personal%20Information.dart';
// import 'package:job/%D8%B5%D9%81%D8%AD%D88%AA%D9%86%D9%82%D9%84/Setting.dart';
import 'package:job/Auth/Create%20account/Customers.dart';
import 'package:job/Auth/SignUp.dart';
import 'package:job/Auth/questions/page1.dart';
import 'package:job/Auth/user%20Signup.dart';
import 'package:job/Auth/login_screen.dart';
import 'package:job/Welcoming/Page1.dart';
import 'package:job/Welcoming/Page3.dart';
import 'package:job/Welcoming/Screen.dart';
import 'package:job/Welcoming/page2.dart';
import 'package:job/Welcoming/page4.dart';
import 'package:job/first%20page/Firstpage.dart';
import 'صفحات التنقل/HomePageCoding/HomePageHeader.dart';
import 'صفحات التنقل/HomePageCoding/JOBPAges/Google/Data.dart';
import 'صفحات التنقل/PROFILE.dart';
import 'صفحات التنقل/Popular jobs.dart';
import 'صفحات التنقل/Profile page coding/CVHeadLine.dart';
import 'صفحات التنقل/Profile page coding/EDITION/EnterSkills.dart';
import 'صفحات التنقل/Profile page coding/EDITION/Personal InformationEdit.dart';
import 'صفحات التنقل/Profile page coding/EDITION/WriteCv.dart';
import 'صفحات التنقل/Profile page coding/KeySkills.dart';
import 'صفحات التنقل/Profile page coding/ProfessionalDetails.dart';



void main() async{
 
runApp(MyApp());}  

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Login UI',
      debugShowCheckedModeBanner: false,
      home: Page1(),
      routes: {
"Page2":(context) => Page2(),
"Page3":(context) => Page3(),
"Page4":(context) => Page4(),
"First":(context) => First(),
"LoginScreen" :(context) => LoginScreen(),
"Userpage":(context) => Userpage(),
"Signup":(context) => SignUpPage(),
"Castomers":(context) => const Castomers(),
"PopulorJobs":(context) => const PopulorJobs(),
"PROFILE":(context) => PROFILE(),
"Work":(context) => Work(),
"CVHeadLine":(context) => CVHeadLine(),
"WriteCv":(context) => WriteCv(),
"KeySkills":(context) => KeySkills(),
"EnterSkills":(context) => EnterSkills(),
"ProfessionalDetails":(context) => ProfessionalDetails(),
"ProfessionalDetailsEdit":(context) => ProfessionalDetailsEdit(),
"PersonlInformation":(context) => PersonalInformation(),
"HomePageHeader":(context) => HomePageHeader(),
"Google":(context) => Google(),
"Data":(context) => Data(),
"Pharma":(context) => Pharma(),
"PersonalInformationEdit":(context) => PersonalInformationEdit(),
"Trwada":(context) => Trwada(),
"Bus":(context) => Bus(),
"Bank":(context) => Bank(),
"Page1":(context) => Page1(),
"Slide1":(context) => Slide1(),
      },
    );
  }
}
