import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ThemeCodes extends StatefulWidget {
  const ThemeCodes({super.key});

  @override
  State<ThemeCodes> createState() => _ThemeCodesState();
}

class _ThemeCodesState extends State<ThemeCodes> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class CardNumFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    if (newValue.selection.baseOffset == 0) {
      return newValue;
    }
    String inputData = newValue.text;
    StringBuffer buffer = StringBuffer();

    for (var i = 0; i < inputData.length; i++) {
      buffer.write(inputData[i]);
      int index = i + 1;

      if (index % 4 == 0 && inputData.length != index) {
        buffer.write('  ');
      }
    }
    return TextEditingValue(
        text: buffer.toString(),
        selection: TextSelection.collapsed(offset: buffer.toString().length));
  }
}

class MonthYearInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    final maxLength = 5; // MM/YY format

    if (newValue.text.length > maxLength) {
      return oldValue; // Prevent input beyond MM/YY format
    }

    var text = newValue.text;

    // Allow only digits
    text = text.replaceAll(RegExp(r'\D'), '');

    if (text.length >= 3) {
      text = text.substring(0, 2) + '/' + text.substring(2);
    }

    return TextEditingValue(
      text: text,
      selection: TextSelection.collapsed(offset: text.length),
    );
  }
}
