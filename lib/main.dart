import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resume_app/screens/about_me.dart';
import 'package:resume_app/screens/contact_me.dart';
import 'package:resume_app/screens/About_me.dart';
import 'package:resume_app/screens/homepage.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resume_app/screens/landing_page.dart';
import 'package:resume_app/screens/my_experiences.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme:
              GoogleFonts.montserratTextTheme(Theme.of(context).textTheme)),
      home: const HopmePage(),
    );
  }
}
