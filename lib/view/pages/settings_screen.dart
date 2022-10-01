import 'package:flutter/material.dart';
import 'package:green_taxi/view/pages/support_screen.dart';

import '../custom_setting_widget/custom_setting.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          'Settings',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 26),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                customSitting(
                  context,
                  onTap: () {
                    print('Our Partners');
                  },
                  text: 'FAQ',
                  icon: Icons.navigate_next_rounded,
                ),
                Divider(
                  color: Colors.grey.shade500,
                  height: 3,
                ),
                customSitting(
                  context,
                  onTap: () {
                    print('Terms & Conditions');
                  },
                  text: 'Terms & Conditions',
                  icon: Icons.navigate_next_rounded,
                ),
                Divider(
                  color: Colors.grey.shade500,
                  height: 3,
                ),
                customSitting(
                  context,
                  onTap: () {
                    print('Our Partners');
                  },
                  text: 'Our Partners',
                  icon: Icons.navigate_next_rounded,
                ),
                Divider(
                  color: Colors.grey.shade500,
                  height: 3,
                ),
                customSitting(
                  context,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SupportScreens()));
                    print('Support');
                  },
                  text: 'Support',
                  icon: Icons.navigate_next_rounded,
                ),
                Divider(
                  color: Colors.grey.shade500,
                  height: 3,
                ),
                customSitting(
                  context,
                  onTap: () {
                    print('Log out ==');
                  },
                  text: 'Log out',
                  icon: Icons.navigate_next_rounded,
                ),
              ],
            )),
      ),
    );
  }
}
