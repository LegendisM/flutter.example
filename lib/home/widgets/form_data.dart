import 'package:flutter/material.dart';
import 'package:quiz/home/constants/theme_form.dart';
import 'package:quiz/home/models/document_model.dart';

class FormData extends StatelessWidget {
  const FormData({super.key, required this.document});
  final DocumentModel document;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "نام : ${document.fullname}",
          style: kThemeFormTitleStyle,
        ),
        const SizedBox(
          height: 23.75,
          child: Divider(
            height: 1,
            color: Color.fromARGB(41, 255, 253, 253),
          ),
        ),
        Text(
          "سن : ${document.age} سال",
          style: kThemeFormTitleStyle,
        ),
        const SizedBox(
          height: 23.75,
          child: Divider(
            height: 1,
            color: Color.fromARGB(41, 255, 253, 253),
          ),
        ),
        Text(
          "زمان شمسی : ${document.shamsiTime}",
          style: kThemeFormTitleStyle,
        ),
        const SizedBox(
          height: 23.75,
          child: Divider(
            height: 1,
            color: Color.fromARGB(41, 255, 253, 253),
          ),
        ),
        Text(
          "زمان میلادی : ${document.miladiTime}",
          style: kThemeFormTitleStyle,
        ),
        const SizedBox(
          height: 23.75,
          child: Divider(
            height: 1,
            color: Color.fromARGB(41, 255, 253, 253),
          ),
        ),
        Text(
          "طول جغرافیایی : ${document.longitude}",
          style: kThemeFormTitleStyle,
        ),
        const SizedBox(
          height: 23.75,
          child: Divider(
            height: 1,
            color: Color.fromARGB(41, 255, 253, 253),
          ),
        ),
        Text(
          "عرض جغرافیایی : ${document.latitude}",
          style: kThemeFormTitleStyle,
        ),
        const SizedBox(
          height: 23.75,
          child: Divider(
            height: 1,
            color: Color.fromARGB(41, 255, 253, 253),
          ),
        ),
        Text(
          "جهت جغرافیایی : ${document.direction}",
          style: kThemeFormTitleStyle,
        ),
        const SizedBox(
          height: 23.75,
          child: Divider(
            height: 1,
            color: Color.fromARGB(41, 255, 253, 253),
          ),
        ),
      ],
    );
  }
}
