import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Services extends StatelessWidget {
  const Services({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> str = ["Dart", "Flutter", "Java", "Kotlin", "Native Android"];
    return Container(
      color: Theme.of(context).backgroundColor,
      child: Center(
        child: Container(
          color: Theme.of(context).backgroundColor,
          margin: const EdgeInsets.only(left: 13, right: 10),
          child: Container(
            height: 600,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Theme.of(context).cardColor,
            ),
            child: Container(
                margin: const EdgeInsets.only(left: 25, right: 30, top: 20),
                child: Column(
                  children: str.map((strone) {
                    return Row(children: [
                      const Text(
                        "\u2022",
                        style: TextStyle(fontSize: 30),
                      ), //bullet text
                      const Gap(10), //space between bullet and text
                      Expanded(
                        child: Text(
                          strone,
                          style: const TextStyle(fontSize: 30),
                        ), //text
                      )
                    ]);
                  }).toList(),
                )),
          ),
        ),
      ),
    );
  }
}
