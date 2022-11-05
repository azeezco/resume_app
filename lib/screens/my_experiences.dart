import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:resume_app/utils/app_styles.dart';

class MyExperience extends StatelessWidget {
  const MyExperience({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).backgroundColor,
      child: Center(
        child: Container(
          color: Theme.of(context).backgroundColor,
          margin: const EdgeInsets.only(
            left: 13,
            right: 8,
          ),
          child: Container(
            //color: Colors.white,
            height: Styles.checkOrientation(context) ? 700 : 350,
            width: Styles.checkOrientation(context) ? 359 : 750,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Theme.of(context).cardColor,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    margin: const EdgeInsets.only(top: 20),
                    child: DefaultTextStyle(
                      style: Styles.semiBoldTextStyle
                          .copyWith(color: Theme.of(context).primaryColor),
                      child: const Text(
                        'Work Experience',
                      ),
                    ),
                  ),
                ),
                const Gap(15),
                expListTile(
                  positionHeld: 'Android Instructor',
                  companyName: 'Developer Student Club',
                  duration: 'Sept 2019-October 2020- 1 year, funaab abeokuta',
                  workDescription:
                      'Taught beginner classes in android development using java',
                ),
                const Gap(15),
                expListTile(
                  positionHeld: 'Android Instructor',
                  companyName: 'Grazac Academy Limited',
                  duration:
                      'Feb 2019-May2020- 6 months, iyana Motuary abeokuta',
                  workDescription:
                      'Taught beginner classes in android development using kotlin',
                ),
                const Gap(15),
                expListTile(
                  positionHeld: 'Intern',
                  companyName: 'IHS Towers Limited ',
                  duration:
                      'Febuary 2022-September 2020- 6 months, Victoria Island Lagos',
                  workDescription:
                      'Provided power support to the PMO Department',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class expListTile extends StatelessWidget {
  final String positionHeld;
  final String companyName;
  final String duration;
  final String workDescription;
  expListTile(
      {required this.positionHeld,
      required this.companyName,
      required this.duration,
      required this.workDescription});

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: ListTile(
        isThreeLine: true,
        title: Text(
          positionHeld,
          style: Styles.regularTextStyle.copyWith(
              fontWeight: FontWeight.w600,
              fontSize: 14,
              color: Theme.of(context).primaryColor),
        ),
        subtitle: Column(
          children: [
            Text(
              companyName,
              style: Styles.regularTextStyle.copyWith(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Theme.of(context).primaryColor),
            ),
            Text(
              duration,
              style: Styles.regularTextStyle.copyWith(
                  fontSize: 13,
                  fontWeight: FontWeight.normal,
                  color: Theme.of(context).primaryColor),
            ),
            Text(
              workDescription,
              style: Styles.regularTextStyle.copyWith(
                  fontSize: 13,
                  fontWeight: FontWeight.normal,
                  color: Theme.of(context).primaryColor),
            ),
          ],
        ),
      ),
    );
  }
}
