import 'package:flutter/material.dart';
import 'package:quiz/home/constants/theme.dart' show kThemeSecondaryColor;

/// Text Styles
const TextStyle kThemeFormTitleStyle = TextStyle(
  color: Colors.white,
  fontSize: 16,
  fontWeight: FontWeight.w600,
);

const TextStyle kThemeFieldInputStyle = TextStyle(
  color: Colors.white,
);

const TextStyle kThemeFieldLabelColor = TextStyle(
  color: Colors.white,
);

/// Input Decorations
const InputDecoration kTextFieldNameDecoration = InputDecoration(
  label: Text("نام و نام خانوادگی"),
);

const InputDecoration kTextFieldNumberDecoration = InputDecoration(
  label: Text("عدد دلخواه (1 تا 10)"),
);

const InputDecoration kTextFieldDateDecoration = InputDecoration(
  label: Text("تاریخ تولد"),
  hintStyle: kThemeFieldLabelColor,
);

/// Button Decorations
ButtonStyle kButtonGreenStyle = ButtonStyle(
  backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
);

ButtonStyle kButtonYelloStyle = ButtonStyle(
  backgroundColor: MaterialStateProperty.all<Color>(
    const Color.fromARGB(225, 209, 209, 16),
  ),
);

ButtonStyle kButtonOrangeStyle = ButtonStyle(
  backgroundColor: MaterialStateProperty.all<Color>(Colors.orange.shade800),
);

/// Box Decorations
BoxDecoration kThemeOfMainContainerDecoration = BoxDecoration(
  color: kThemeSecondaryColor,
  borderRadius: BorderRadius.circular(6),
  boxShadow: const [
    BoxShadow(
      color: Colors.black26,
      blurRadius: 3,
      offset: Offset(0, 0),
    ),
  ],
);
