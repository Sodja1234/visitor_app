import 'package:flutter/material.dart';
import 'package:visitor_app/pages/FormulairePatientPage.dart';
import 'package:visitor_app/pages/WelcomePage.dart';

void main(){
  runApp(MonApp());
}

class MonApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomePage(),
    );
  }
}