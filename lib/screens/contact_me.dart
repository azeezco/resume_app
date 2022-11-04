import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:resume_app/utils/app_styles.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactMe extends StatelessWidget {
  const ContactMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Container(
          color: Colors.white,
          margin: const EdgeInsets.only(left: 13, right: 10),
          child: Container(
            height: 600,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Styles.bgColor,
            ),
            child: Container(
              margin: const EdgeInsets.only(left: 25, right: 30, top: 20),
              child: Column(
                children: [
                  DefaultTextStyle(
                    style: Styles.regularTextStyle
                        .copyWith(fontWeight: FontWeight.w600),
                    child: const Text(
                      'If you have any Unique Idea for Project in your mind',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const Gap(30),
                  Material(
                    color: Styles.bgColor,
                    child: Container(
                      height: 29,
                      width: 133,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.black),
                      child: const InkWell(
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Contact Me',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Gap(15),
                  Row(
                    children: [
                      SizedBox(
                        height: 30,
                        width: 30,
                        child: Material(
                          color: Styles.bgColor,
                          child: Ink(
                            decoration: const ShapeDecoration(
                              color: Color(0xFF000000),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              )),
                            ),
                            child: IconButton(
                              iconSize: 15,
                              icon: const Icon(
                                Icons.call_outlined,
                                size: 15,
                              ),
                              color: Colors.white,
                              onPressed: () {},
                            ),
                          ),
                        ),
                      ),
                      const Gap(15),
                      DefaultTextStyle(
                        style: Styles.regularTextStyle,
                        child: const Text(
                          '+2348133715780',
                        ),
                      )
                    ],
                  ),
                  const Gap(15),
                  Row(
                    children: [
                      SizedBox(
                        height: 30,
                        width: 30,
                        child: Material(
                          color: Styles.bgColor,
                          child: Ink(
                            decoration: BoxDecoration(
                              color: const Color(0xFF000000),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: IconButton(
                              iconSize: 15,
                              icon: const Icon(
                                Icons.mail_outlined,
                                size: 15,
                              ),
                              color: Colors.white,
                              onPressed: () {},
                            ),
                          ),
                        ),
                      ),
                      const Gap(15),
                      DefaultTextStyle(
                        style: Styles.regularTextStyle,
                        child: const Text(
                          'Azeezco1@gamil.com',
                        ),
                      )
                    ],
                  ),
                  const Gap(15),
                  DefaultTextStyle(
                    style: Styles.regularTextStyle,
                    child: const Text('I make as soon as possible.'),
                  ),
                  const Gap(15),
                  Row(
                    children: [
                      SocialMediaLink(
                        myicon: const AssetImage("images/github.png"),
                        sUrl: Uri.parse('https://github.com/lawalazeez'),
                      ),
                      const Gap(10),
                      SocialMediaLink(
                        myicon: const AssetImage("images/facebook.png"),
                        sUrl: Uri.parse('https://github.com/lawalazeez'),
                      ),
                      const Gap(10),
                      SocialMediaLink(
                        myicon: const AssetImage("images/linkedin.png"),
                        sUrl: Uri.parse('https://github.com/lawalazeez'),
                      ),
                      const Gap(10),
                      SocialMediaLink(
                        myicon: const AssetImage("images/twitter.png"),
                        sUrl: Uri.parse('https://github.com/lawalazeez'),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class SocialMediaLink extends StatelessWidget {
  final AssetImage myicon;
  final Uri sUrl;
  const SocialMediaLink({required this.myicon, required this.sUrl});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Styles.bgColor,
      child: Ink(
        decoration: const ShapeDecoration(
          color: Color(0xFF000000),
          shape: CircleBorder(),
        ),
        child: IconButton(
          iconSize: 50,
          icon: ImageIcon(
            myicon,
            size: 25,
          ),
          color: Colors.white,
          onPressed: _launchURL,
        ),
      ),
    );
  }

  _launchURL() async {
    if (await canLaunchUrl(sUrl)) {
      await launchUrl(sUrl, mode: LaunchMode.platformDefault);
    } else {
      throw 'Could not launch $sUrl';
    }
  }
}
