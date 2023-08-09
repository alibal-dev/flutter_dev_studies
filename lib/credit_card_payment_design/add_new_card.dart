// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dev/credit_card_payment_design/theme.dart';

class AddNewCard extends StatefulWidget {
  const AddNewCard({super.key});

  @override
  State<AddNewCard> createState() => _AddNewCardState();
}

class _AddNewCardState extends State<AddNewCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.chevron_left),
        title: Text(
          'Payment Information',
        ),
      ),
      body: Column(children: [
        CreditCardWidget(),
        Column(
          children: [
            (ElevatedButton(onPressed: () {}, child: Text('Payment'))),
          ],
        ),
      ]),
    );
  }
}

class CreditCardWidget extends StatelessWidget {
  const CreditCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      /* height: MediaQuery.of(context).size.height * 0.25,
      width: MediaQuery.of(context).size.width * 1, */
      child: Card(
        child: Column(
          children: [
            NameSpace(),
            CardNumSpace(),
            Row(
              children: [
                Expanded(
                  child: DateSpace(),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: CVVSpace(),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class DateSpace extends StatelessWidget {
  const DateSpace({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 10),
      child: TextField(
        decoration: InputDecoration(
          labelText: 'Expiration Date',
          hintText: 'Month / Year',
          prefixIcon: Icon(Icons.calendar_month),
        ),
        inputFormatters: [
          FilteringTextInputFormatter.digitsOnly,
          LengthLimitingTextInputFormatter(4),
          MonthYearInputFormatter()
        ],
        keyboardType: TextInputType.number,
      ),
    );
  }
}

class CVVSpace extends StatelessWidget {
  const CVVSpace({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 10),
      child: TextField(
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          labelText: 'CVV code',
          prefixIcon: Icon(Icons.password),
          hintText: '***',
        ),
        inputFormatters: [
          LengthLimitingTextInputFormatter(3),
          FilteringTextInputFormatter.digitsOnly,
        ],
      ),
    );
  }
}

class CardNumSpace extends StatelessWidget {
  const CardNumSpace({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
      child: TextField(
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
    );
  }
}

class NameSpace extends StatelessWidget {
  const NameSpace({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 5),
      child: TextField(
        decoration: InputDecoration(
            prefixIcon: Icon(Icons.person), labelText: 'Name on Card'),
      ),
    );
  }
}
