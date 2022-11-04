import 'dart:developer';
import 'dart:ui';
import 'package:resume_app/screens/landing_page.dart';
import 'package:resume_app/screens/my_experiences.dart';
import 'package:resume_app/screens/services.dart';
import 'package:resume_app/screens/contact_me.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:resume_app/utils/app_styles.dart';

class HopmePage extends StatefulWidget {
  const HopmePage({super.key});

  @override
  State<HopmePage> createState() => _HopmePageState();
}

class _HopmePageState extends State<HopmePage> {
  static final List<Widget> _widgetOptions = <Widget>[
    const LandingPage(),
    const MyExperience(),
    const Text("Services"),
    const ContactMe(),
  ];

  int _selectedIndex = 0;

  Widget CustomTag(String tagName, int index) {
    return Container(
      height: 29,
      width: 110,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.black),
      child: InkWell(
        onTap: () {
          setState(() {
            _selectedIndex = index;
          });
        },
        child: Align(
          alignment: Alignment.center,
          child: Text(
            tagName,
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 13, right: 8),
            child: Container(
              padding: const EdgeInsets.only(left: 8, right: 8),
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: const Color(0xFFE5E5E5),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    Icons.menu_rounded,
                    color: Colors.black,
                  ),
                  Text('Portfolio', style: Styles.regularTextStyle),
                  const Icon(
                    Icons.share_rounded,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
          ),
          const Gap(5),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 13),
            child: Row(
              children: [
                CustomTag('About Me', 0),
                const Gap(5),
                CustomTag('Experience', 1),
                const Gap(5),
                CustomTag('Services', 2),
                const Gap(5),
                CustomTag('Contact Me', 3),
              ],
            ),
          ),
          Center(
            child: _widgetOptions[_selectedIndex],
          )
        ],
      ),
    );
  }
}
