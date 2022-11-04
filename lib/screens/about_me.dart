import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resume_app/utils/app_styles.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Container(
          color: Colors.white,
          margin: const EdgeInsets.only(left: 13, right: 8),
          child: Container(
            height: 300,
            width: 359,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Styles.bgColor,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DefaultTextStyle(
                  style: Styles.semiBoldTextStyle,
                  child: const Text(
                    'About Me',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
