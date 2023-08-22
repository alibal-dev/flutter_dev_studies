// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_typing_uninitialized_variables, unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_dev/demos/meditation_app/widget/day_picker.dart';
import 'package:flutter_dev/random_trials.dart';
import 'package:time_picker_spinner/time_picker_spinner.dart';

class ReminderPage extends StatefulWidget {
  const ReminderPage({super.key});

  @override
  State<ReminderPage> createState() => _ReminderPageState();
}

class _ReminderPageState extends State<ReminderPage> {
  @override
  Widget build(BuildContext context) {
    List<bool> values = List.filled(7, false);
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              children: [
                Text(
                  'What time would you \nlike to meditate\n',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  'Any time you can choose but\nWe recommend first thing in the morning',
                  style: TextStyle(fontSize: 15),
                  textAlign: TextAlign.start,
                ),
                SizedBox(
                  height: 12,
                ),
                Card(
                    elevation: 5,
                    child: TimePickerSpinner(
                      locale: const Locale('en', ''),
                      is24HourMode: true,
                      isShowSeconds: false,
                      itemHeight: 80,
                      normalTextStyle: const TextStyle(
                        fontSize: 24,
                      ),
                      highlightedTextStyle:
                          const TextStyle(fontSize: 24, color: Colors.blue),
                      isForce2Digits: true,
                      onTimeChange: (time) {
                        setState(() {});
                      },
                    )),
                SizedBox(
                  height: 12,
                ),
                Text(
                    'Everyday is the best , but we recommend picking \nat least five.'),
                DayPicker(),
                SizedBox(
                  height: 12,
                ),
                SaveButton(),
                SizedBox(
                  height: 12,
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'NO THANKS',
                      style: TextStyle(color: Colors.black),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SaveButton extends StatelessWidget {
  const SaveButton({super.key});

  @override
  Widget build(context) {
    return SizedBox(
      width: 347,
      height: 65,
      child: ElevatedButton(
        style: ButtonStyle(),
        onPressed: () {},
        child: Text('SAVE', style: TextStyle(fontSize: 20)),
      ),
    );
  }
}


/* WeekdaySelector(
                  selectedFillColor: Colors.blue,
                  disabledFillColor: Colors.cyan,
                  selectedColor: Colors.black,
                  onChanged: (int day) {
                    setState(() {
                      // Use module % 7 as Sunday's index in the array is 0 and
                      // DateTime.sunday constant integer value is 7.
                      final index = day % 7;

                      values[index] = !values[index];
                    });
                  },
                  values: values,
                ) */


                