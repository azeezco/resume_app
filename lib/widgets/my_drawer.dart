import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';
import 'package:resume_app/utils/app_styles.dart';

import '../utils/dark_theme_provider.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    final themeChange = Provider.of<DarkThemeProvider>(context);
    return Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
            ),
            child: Text('Resume',
                style: Styles.regularTextStyle
                    .copyWith(color: Theme.of(context).backgroundColor)),
          ),
          ListTile(
            title: const Text('Item 1'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('Item 2'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          Container(
            margin: const EdgeInsets.only(left: 10),
            child: Row(
              children: [
                Text('Mode',
                    style: Styles.regularTextStyle
                        .copyWith(color: Theme.of(context).primaryColor)),
                const Gap(50),
                Switch(
                    value: themeChange.darkTheme,
                    onChanged: (toggle) {
                      setState(() {
                        themeChange.darkTheme = toggle;
                      });
                    })
              ],
            ),
          )
        ],
      ),
    );
  }
}
