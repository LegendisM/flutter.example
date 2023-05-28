import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:quiz/home/constants/theme_about.dart';
import 'package:quiz/home/constants/theme_form.dart';

class AboutCard extends StatelessWidget {
  const AboutCard({
    super.key,
    required this.name,
    required this.grade,
    required this.phone,
    required this.code,
    required this.location,
    required this.avatar,
  });
  final String name;
  final String grade;
  final String phone;
  final String code;
  final String location;
  final String avatar;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: kThemeAboutCardDecoration,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ListTile(
            title: Text(
              name,
              style: kThemeFieldLabelColor,
            ),
            subtitle: Text(
              grade,
              style: kThemeFieldLabelColor,
            ),
            leading: Image.asset(
              "assets/images/avatars/$avatar.png",
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              decoration: kThemeAboutCardDecorationv2,
              child: ClipRect(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 19, sigmaY: 19),
                  child: Column(
                    children: [
                      ListTile(
                        title: Text(
                          "تلفن همراه : $phone",
                          style: kThemeFieldLabelColor,
                        ),
                        trailing: const Icon(Icons.phone),
                        iconColor: const Color.fromARGB(255, 177, 175, 219),
                      ),
                      ListTile(
                        title: Text(
                          " کد ملی : $code",
                          style: kThemeFieldLabelColor,
                        ),
                        trailing: const Icon(Icons.card_membership),
                        iconColor: const Color.fromARGB(255, 177, 175, 219),
                      ),
                      ListTile(
                        title: Text(
                          " محل زندگی : $location",
                          style: kThemeFieldLabelColor,
                        ),
                        trailing: const Icon(Icons.location_city),
                        iconColor: const Color.fromARGB(255, 177, 175, 219),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
