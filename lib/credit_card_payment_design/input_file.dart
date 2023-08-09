// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart'; // Import Cupertino
import 'package:flutter/services.dart';
import 'package:flutter_dev/credit_card_payment_design/theme.dart';

class NewCard extends StatefulWidget {
  const NewCard({super.key});

  @override
  State<NewCard> createState() => _NewCardState();
}

class _NewCardState extends State<NewCard> {
  bool _agreedToTerms = false; // Added variable for CupertinoSwitch

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /* resizeToAvoidBottomInset: false, */
      appBar: AppBar(
        leading: Icon(Icons.chevron_left),
        title: Text(
          'Payment Information',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30, left: 25, right: 25),
        child: Column(
          children: [
            Form(
              child: Column(
                children: [
                  NameSpace(),
                  CardNumSpace(),
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: DateSpace(),
                ),
                SizedBox(width: 15),
                Expanded(
                  child: cvvSpace(),
                )
              ],
            ),
            Row(
              children: [
                Text(
                  'I Read and Agreed Terms and Conditions',
                  style: TextStyle(fontSize: 14),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.1,
                ),
                CupertinoSwitch(
                  value: _agreedToTerms,
                  onChanged: (value) {
                    setState(() {
                      _agreedToTerms = value;
                    });
                  },
                ),
              ],
            ),
            PaymentButtonWidget()
          ],
        ),
      ),
    );
  }
}

class PaymentButtonWidget extends StatelessWidget {
  const PaymentButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          constraints: BoxConstraints(
            minHeight: MediaQuery.of(context).size.height * 0.02,
            maxHeight: MediaQuery.of(context).size.height * 0.05,
          ),
          child: ElevatedButton(
            onPressed: () {},
            child: Text('Payment'),
          ),
        ),
      ),
    );
  }
}

class cvvSpace extends StatelessWidget {
  const cvvSpace({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(left: 20, top: 10, bottom: 15),
          labelText: 'CVV code',
          prefixIcon: Icon(Icons.password),
          hintText: '***',
        ),
        inputFormatters: [
          LengthLimitingTextInputFormatter(3),
          FilteringTextInputFormatter.digitsOnly,
        ],
        keyboardType: TextInputType.number);
  }
}

class DateSpace extends StatelessWidget {
  const DateSpace({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        decoration: InputDecoration(
          labelText: 'Expiration Date',
          hintText: 'Month / Year',
          prefixIcon: Icon(Icons.calendar_month),
          contentPadding: EdgeInsets.only(left: 20, top: 10, bottom: 15),
        ),
        inputFormatters: [
          FilteringTextInputFormatter.digitsOnly,
          LengthLimitingTextInputFormatter(4),
          MonthYearInputFormatter()
        ],
        keyboardType: TextInputType.number);
  }
}

class CardNumSpace extends StatelessWidget {
  const CardNumSpace({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(left: 20, top: 10, bottom: 15),
        prefixIcon: Icon(Icons.credit_card),
        labelText: 'Card Number',
      ),
      keyboardType: TextInputType.number,
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
        LengthLimitingTextInputFormatter(16),
        CardNumFormatter(),
      ],
    );
  }
}

class NameSpace extends StatelessWidget {
  const NameSpace({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          contentPadding: EdgeInsets.only(left: 20, top: 10, bottom: 15),
          prefixIcon: Icon(Icons.person),
          labelText: 'Name on Card'),
    );
  }
}
