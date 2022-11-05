import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:resume_app/utils/app_styles.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactMe extends StatelessWidget {
  const ContactMe({super.key});

  @override
  Widget build(BuildContext context) {
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
                children: [
                  const Gap(30),
                  DefaultTextStyle(
                    style: Styles.regularTextStyle.copyWith(
                        fontWeight: FontWeight.w600,
                        color: Theme.of(context).primaryColor),
                    child: const Text(
                      'If you have any Unique Idea for Project in your mind',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const Gap(30),
                  Material(
                    color: Theme.of(context).backgroundColor,
                    child: Container(
                      height: 29,
                      width: 133,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Theme.of(context).primaryColor),
                      child: InkWell(
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Contact Me',
                            style: Styles.BoWCardTextStyle.copyWith(
                                color: Theme.of(context).backgroundColor),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Gap(30),
                  Row(
                    children: [
                      SizedBox(
                        height: 30,
                        width: 30,
                        child: Material(
                          color: Theme.of(context).backgroundColor,
                          child: Ink(
                            decoration: ShapeDecoration(
                              color: Theme.of(context).primaryColor,
                              shape: const RoundedRectangleBorder(
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
                              color: Theme.of(context).backgroundColor,
                              onPressed: () {},
                            ),
                          ),
                        ),
                      ),
                      const Gap(15),
                      DefaultTextStyle(
                        style: Styles.regularTextStyle
                            .copyWith(color: Theme.of(context).primaryColor),
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
                          color: Theme.of(context).cardColor,
                          child: Ink(
                            decoration: BoxDecoration(
                              color: Theme.of(context).primaryColor,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: IconButton(
                              iconSize: 15,
                              icon: const Icon(
                                Icons.mail_outlined,
                                size: 15,
                              ),
                              color: Theme.of(context).backgroundColor,
                              onPressed: () {},
                            ),
                          ),
                        ),
                      ),
                      const Gap(15),
                      DefaultTextStyle(
                        style: Styles.regularTextStyle
                            .copyWith(color: Theme.of(context).primaryColor),
                        child: const Text(
                          'Azeezco1@gamil.com',
                        ),
                      )
                    ],
                  ),
                  const Gap(50),
                  DefaultTextStyle(
                    style: Styles.regularTextStyle
                        .copyWith(color: Theme.of(context).primaryColor),
                    child: const Text(
                      'I am open to collaboration on open source'
                      ' project. I love exciting challenges and is open to '
                      'suggestions. I work with little or no supervision, '
                      'Let me be the guy to bring your ideas to life.',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const Gap(90),
                  Row(
                    children: [
                      SocialMediaLink(
                        myicon: const AssetImage("images/github.png"),
                        sUrl: Uri.parse('https://github.com/azeezco'),
                      ),
                      const Gap(10),
                      SocialMediaLink(
                        myicon: const AssetImage("images/facebook.png"),
                        sUrl: Uri.parse('https://facebook.com/azeezayotunde'),
                      ),
                      const Gap(10),
                      SocialMediaLink(
                        myicon: const AssetImage("images/linkedin.png"),
                        sUrl:
                            Uri.parse('https://www.linkedin.com/in/azeezlawal'),
                      ),
                      const Gap(10),
                      SocialMediaLink(
                        myicon: const AssetImage("images/twitter.png"),
                        sUrl: Uri.parse('https://twitter.com/lawalazeez'),
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
      color: Theme.of(context).cardColor,
      child: Ink(
        decoration: ShapeDecoration(
          color: Theme.of(context).primaryColor,
          shape: CircleBorder(),
        ),
        child: IconButton(
          iconSize: 50,
          icon: ImageIcon(
            myicon,
            size: 25,
          ),
          color: Theme.of(context).backgroundColor,
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
