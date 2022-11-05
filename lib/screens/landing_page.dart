import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:resume_app/utils/app_styles.dart';
import 'package:url_launcher/url_launcher.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    // final themeChange = Provider.of<DarkThemeProvider>(context);
    String url =
        'https://drive.google.com/file/d/1UUV8k9Pju3x6ppBspHAhTH1T8UFfR1st/view?usp=share_link';
    _launchURL() async {
      if (await canLaunchUrl(Uri.parse(url))) {
        await launchUrl(Uri.parse(url), mode: LaunchMode.platformDefault);
      } else {
        throw 'Could not launch $url';
      }
    }

    return Column(
      children: [
        Container(
          color: Theme.of(context).backgroundColor,
          child: Center(
            child: Container(
              color: Theme.of(context).backgroundColor,
              margin: const EdgeInsets.only(left: 13, right: 8),
              child: Container(
                height: 400,
                width: 359,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Theme.of(context).cardColor,
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
                      style: Styles.semiBoldTextStyle
                          .copyWith(color: Theme.of(context).primaryColor),
                      child: const Text(
                        'Hello,',
                      ),
                    ),
                    const Gap(10),
                    DefaultTextStyle(
                      style: Styles.semiBoldTextStyle
                          .copyWith(color: Theme.of(context).primaryColor),
                      child: const Text(
                        'I am Lawal Azeez',
                      ),
                    ),
                    const Gap(10),
                    DefaultTextStyle(
                      style: Styles.semiBoldTextStyle.copyWith(
                          fontWeight: FontWeight.w400,
                          color: Theme.of(context).primaryColor),
                      child: const Text(
                        'Mobile Developer',
                      ),
                    ),
                    const Gap(10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Material(
                          color: Theme.of(context).backgroundColor,
                          child: Container(
                            height: 30,
                            width: 156,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Theme.of(context).primaryColor),
                            child: InkWell(
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  'Hire Me',
                                  style: Styles.BoWCardTextStyle.copyWith(
                                      color: Theme.of(context).backgroundColor),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Gap(10),
                        Material(
                          color: Theme.of(context).cardColor,
                          child: Container(
                            height: 30,
                            width: 156,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Theme.of(context).primaryColor),
                            child: InkWell(
                              onTap: _launchURL,
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  'Download CV',
                                  style: Styles.BoWCardTextStyle.copyWith(
                                      color: Theme.of(context).backgroundColor),
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
          color: Theme.of(context).backgroundColor,
          child: Center(
            child: Container(
              color: Theme.of(context).backgroundColor,
              margin: const EdgeInsets.only(left: 13, right: 8),
              child: Container(
                height: 300,
                width: 359,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Theme.of(context).cardColor,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DefaultTextStyle(
                      style: Styles.semiBoldTextStyle
                          .copyWith(color: Theme.of(context).primaryColor),
                      child: const Text(
                        'About Me',
                      ),
                    ),
                    const Gap(30),
                    DefaultTextStyle(
                      style: Styles.semiBoldTextStyle.copyWith(
                          fontWeight: FontWeight.w400,
                          color: Theme.of(context).primaryColor),
                      child: const Text(
                        'I am a Mobile Developer for android and ios device. '
                        'I also like building apps which are seemless and beautiful.'
                        ' If You Have Any Query Contact me and I will try my '
                        'best to show your problem result as soon as possible.',
                        textAlign: TextAlign.center,
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
