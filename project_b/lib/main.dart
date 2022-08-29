import 'package:flutter/material.dart';
import 'package:project_b/Change_Email.dart';
import 'package:project_b/Instagram.dart';
import 'Settings.dart';
import 'About_app.dart';
import 'Change_Password.dart';
import 'Change_Email.dart';
import 'Facebook.dart';
import 'Twitter.dart';
import 'package:shared_preferences/shared_preferences.dart';
void main() {
  runApp(MaterialApp(home:MyApp(),
routes:{
  '0':(context)=>Settings(),
  '1':(context)=>About_app(),
  '2':(context)=>Change_Password(),
  '3':(context)=>Change_Email(),
  '4':(context)=>Facebook(),
  '5':(context)=>Twitter(),
  '6':(context)=>Instagram()
}
  ));
}
class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Settings();

  }
}


