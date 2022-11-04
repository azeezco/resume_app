import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resume_app/utils/app_styles.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.white,
          child: Center(
            child: Container(
              color: Colors.white,
              margin: const EdgeInsets.only(left: 13, right: 8),
              child: Container(
                height: 400,
                width: 359,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Styles.bgColor,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: SizedBox.fromSize(
                          size: const Size.fromRadius(100),
                          child: Container(
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("images/lawalazeez.jpeg"),
                              ),
                            ),
                          )),
                    ),
                    const Gap(10),
                    DefaultTextStyle(
                      style: Styles.semiBoldTextStyle,
                      child: const Text(
                        'Hello,',
                      ),
                    ),
                    const Gap(10),
                    DefaultTextStyle(
                      style: Styles.semiBoldTextStyle,
                      child: const Text(
                        'I am Lawal Azeez',
                      ),
                    ),
                    const Gap(10),
                    DefaultTextStyle(
                      style: Styles.semiBoldTextStyle
                          .copyWith(fontWeight: FontWeight.w400),
                      child: const Text(
                        'Mobile Developer',
                      ),
                    ),
                    const Gap(10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Material(
                          color: Styles.bgColor,
                          child: Container(
                            height: 30,
                            width: 156,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.black),
                            child: const InkWell(
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  'Hire Me',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Gap(10),
                        Material(
                          color: Styles.bgColor,
                          child: Container(
                            height: 30,
                            width: 156,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.black),
                            child: const InkWell(
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  'Download CV',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        const Gap(10),
        Container(
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
        )
      ],
    );
  }
}
