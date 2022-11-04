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
      color: Colors.white,
      child: Center(
        child: Container(
          color: Colors.white,
          margin: const EdgeInsets.only(
            left: 13,
            right: 8,
          ),
          child: Container(
            //color: Colors.white,
            height: 400,
            width: 359,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Styles.bgColor,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    margin: const EdgeInsets.only(top: 20),
                    child: DefaultTextStyle(
                      style: Styles.semiBoldTextStyle,
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
                  duration: 'Sept 2019-October 2020- 1 year, funaab aveokuta',
                  workDescription:
                      'Taught beginner classes in android development using kotlin',
                ),
                const Gap(15),
                expListTile(
                  positionHeld: 'Android Instructor',
                  companyName: 'Developer Student Club',
                  duration: 'Sept 2019-October 2020- 1 year, funaab aveokuta',
                  workDescription:
                      'Taught beginner classes in android development using kotlin',
                ),
                const Gap(15),
                expListTile(
                  positionHeld: 'Android Instructor',
                  companyName: 'Developer Student Club',
                  duration: 'Sept 2019-October 2020- 1 year, funaab aveokuta',
                  workDescription:
                      'Taught beginner classes in android development using kotlin',
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
          style: Styles.regularTextStyle
              .copyWith(fontWeight: FontWeight.w600, fontSize: 14),
        ),
        subtitle: Column(
          children: [
            Text(
              companyName,
              style: Styles.regularTextStyle
                  .copyWith(fontWeight: FontWeight.w400, fontSize: 14),
            ),
            Text(
              duration,
              style: Styles.regularTextStyle
                  .copyWith(fontSize: 13, fontWeight: FontWeight.normal),
            ),
            Text(
              workDescription,
              style: Styles.regularTextStyle
                  .copyWith(fontSize: 13, fontWeight: FontWeight.normal),
            ),
          ],
        ),
      ),
    );
  }
}
