// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_constructors_in_immutables, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dev/credit_card_payment_design/theme.dart';

class RandomThings extends StatefulWidget {
  const RandomThings({super.key});

  @override
  State<RandomThings> createState() => _RandomThingsState();
}

class _RandomThingsState extends State<RandomThings> {
  bool _agreedToTerms = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.chevron_left),
        title: Text(
          'Payment Information',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Form(
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      labelText: 'Name on Card',
                    ),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 20),
                      prefixIcon: Icon(Icons.credit_card),
                      labelText: 'Card Number',
                    ),
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      LengthLimitingTextInputFormatter(16),
                      CardNumFormatter(),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Expiration Date',
                      hintText: 'Month / Year',
                      prefixIcon: Icon(Icons.calendar_month),
                    ),
                  ),
                ),
                SizedBox(width: 15),
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'CVV code',
                      prefixIcon: Icon(Icons.password),
                      hintText: '***',
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 1,
                  height: MediaQuery.of(context).size.height * 0.15,
                  child: CustomSwitchButton(
                    buttonText: 'Payment',
                    onSwitchChanged: (value) {
                      setState(() {
                        _agreedToTerms = value;
                      });
                    },
                    onButtonPressed: () {
                      if (_agreedToTerms) {
                        // Perform payment logic
                      } else {
                        // Display a message indicating terms agreement is required
                      }
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomSwitchButton extends StatefulWidget {
  final String buttonText;
  final ValueChanged<bool> onSwitchChanged;
  final VoidCallback onButtonPressed;

  CustomSwitchButton({
    required this.buttonText,
    required this.onSwitchChanged,
    required this.onButtonPressed,
  });

  @override
  _CustomSwitchButtonState createState() => _CustomSwitchButtonState();
}

class _CustomSwitchButtonState extends State<CustomSwitchButton> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Text('I Read and Agreed Terms and Conditions'),
            ),
            CupertinoSwitch(
              value: _isChecked,
              onChanged: (value) {
                setState(() {
                  _isChecked = value;
                });
                widget.onSwitchChanged(value);
              },
            ),
          ],
        ),
        SizedBox(height: 16),
        ElevatedButton(
          onPressed: widget.onButtonPressed,
          child: Text(widget.buttonText),
        ),
      ],
    );
  }
}
