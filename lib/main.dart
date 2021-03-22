import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/home_page.dart';
import 'package:flutter_catalog/pages/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final int days = 30;
  final String name = "codepur";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.light,
      ),
      initialRoute: "/home",
      routes:{
        "/":(context)=>HomePage(),
        "/home":(context)=>LoginPage(),
      }
    );
  }
}
