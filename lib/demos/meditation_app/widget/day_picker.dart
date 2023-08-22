// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class WeekdaySelector extends StatefulWidget {
  final List<bool> values;
  final ValueChanged<int> onChanged;
  final Color activeColor;

  const WeekdaySelector({
    super.key,
    required this.values,
    required this.onChanged,
    required this.activeColor,
  });

  @override
  State<WeekdaySelector> createState() => _WeekdaySelectorState();
}

class _WeekdaySelectorState extends State<WeekdaySelector> {
  final List<String> weekdayNamesShort = <String>[
    'M',
    'T',
    'W',
    'T',
    'F',
    'S',
    'S'
  ];

  @override
  void initState() {
    super.initState();
    values = List.generate(7, (index) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: List.generate(7, (index) {
        return InkWell(
          onTap: () {
            if (!values[index]) {
              values[index] = true;
              widget.onChanged(index);
            } else {
              values[index] = false;
              widget.onChanged(index);
            }
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 3),
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: values[index] ? widget.activeColor : Colors.grey,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(
                child: Text(
                  weekdayNamesShort[index],
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ),
        );
      }),
    );
  }

  late List<bool> values;
}

class DayPicker extends StatefulWidget {
  const DayPicker({super.key});

  @override
  State<DayPicker> createState() => _DayPickerState();
}

class _DayPickerState extends State<DayPicker> {
  List<bool> values = List.filled(7, false);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: WeekdaySelector(
          values: List.filled(7, false),
          onChanged: (value) {
            setState(() {
              if (values[value]) {
                values[value] = false;
              } else {
                values[value] = true;
              }

              debugPrint(values.toString());
            });
          },
          activeColor: Colors.red),
    );
  }
}
