import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/home_page.dart';
import 'package:flutter_catalog/pages/login_page.dart';
import 'package:flutter_catalog/utils/routes.dart';
import "package:google_fonts/google_fonts.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final int days = 30;
  final String name = "codepur";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.light,
        theme: ThemeData(
          primarySwatch: Colors.grey,
          // fontFamily: GoogleFonts.latoTextTheme(),
          primaryTextTheme: GoogleFonts.latoTextTheme(),
        ),
        darkTheme: ThemeData(
          brightness: Brightness.dark,
        ),
        initialRoute: "/login",
        routes: {
          "/": (context) => LoginPage(),
          MyRoutes.homeRoute: (context) => HomePage(),
          MyRoutes.loginRoute: (context) => LoginPage(),
        });
  }
}
