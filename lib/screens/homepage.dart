import 'dart:developer';
import 'dart:ffi';
import 'dart:ui';
import 'package:resume_app/screens/landing_page.dart';
import 'package:resume_app/screens/my_experiences.dart';
import 'package:resume_app/screens/services.dart';
import 'package:resume_app/screens/contact_me.dart';
import 'package:resume_app/widgets/my_drawer.dart';
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
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  static final List<Widget> _widgetOptions = <Widget>[
    const LandingPage(),
    const MyExperience(),
    const Services(),
    const ContactMe(),
  ];

  int _selectedIndex = 0;

  Widget CustomTag(String tagName, int index) {
    return Container(
      height: 29,
      width: 110,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Theme.of(context).primaryColor),
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
            style: Styles.BoWCardTextStyle.copyWith(
                color: Theme.of(context).backgroundColor),
          ),
        ),
      ),
    );
  }

  Widget _portraitMode() {
    return Stack(
      fit: StackFit.expand,
      children: [
        ListView(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 13, right: 8),
              child: Container(
                padding: const EdgeInsets.only(left: 8, right: 8),
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Theme.of(context).cardColor,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () => _scaffoldKey.currentState?.openDrawer(),
                      child: Icon(
                        Icons.menu_rounded,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                    Text(
                      'Portfolio',
                      style: Styles.regularTextStyle
                          .copyWith(color: Theme.of(context).primaryColor),
                    ),
                    Icon(
                      Icons.share_rounded,
                      color: Theme.of(context).primaryColor,
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
      ],
    );
  }

  Widget _landScapeMode() {
    return Stack(
      fit: StackFit.expand,
      children: [
        ListView(
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
                    InkWell(
                      onTap: () => _scaffoldKey.currentState?.openDrawer(),
                      child: const Icon(
                        Icons.menu_rounded,
                        color: Colors.black,
                      ),
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
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: const MyDrawer(),
      body: OrientationBuilder(
        builder: (BuildContext context, Orientation orientation) {
          if (orientation == Orientation.portrait) {
            return _portraitMode();
          } else {
            return _landScapeMode();
          }
        },
      ),
    );
  }
}
