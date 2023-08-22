// ignore_for_file: unnecessary_new, prefer_const_constructors, unnecessary_string_interpolations, avoid_unnecessary_containers, library_private_types_in_public_api

/* /* // ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_constructors_in_immutables, library_private_types_in_public_api

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


/* import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: myWidget(context),
    );
  }
}

Widget myWidget(BuildContext context) {
  return MediaQuery.removePadding(
    context: context,
    removeTop: true,
    child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        itemCount: 300,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            color: Colors.amber,
            child: Center(child: Text('$index')),
          );
        }),
  );
}
 */ */

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AlarmWidget(),
    );
  }
}

class AlarmWidget extends StatefulWidget {
  @override
  _AlarmWidgetState createState() => _AlarmWidgetState();
}

class _AlarmWidgetState extends State<AlarmWidget> {
  double _selectedHour = 0.0;
  double _selectedMinute = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Set Alarm')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Text('Hour: $_selectedHour'),
                Slider(
                  value: _selectedHour,
                  onChanged: (newValue) {
                    setState(() {
                      _selectedHour = newValue;
                    });
                  },
                  min: 0,
                  max: 23,
                  divisions: 23,
                  label: _selectedHour.toInt().toString(),
                ),
              ],
            ),
            Column(
              children: [
                Text('Minute: $_selectedMinute'),
                Slider(
                  value: _selectedMinute,
                  onChanged: (newValue) {
                    setState(() {
                      _selectedMinute = newValue;
                    });
                  },
                  min: 0,
                  max: 59,
                  divisions: 59,
                  label: _selectedMinute.toInt().toString(),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                // Implement your alarm setting logic here
                print(
                    'Alarm set for $_selectedHour:${_selectedMinute.toInt()}');
              },
              child: Text('Set Alarm'),
            ),
          ],
        ),
      ),
    );
  }
}
 */

/* import 'package:flutter/material.dart';

class RandomTrials extends StatefulWidget {
  const RandomTrials({super.key});

  @override
  State<RandomTrials> createState() => _RandomTrialsState();
}

class _RandomTrialsState extends State<RandomTrials> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
} */
/* 
import 'package:flutter/material.dart';

/// Flutter code sample for [BottomNavigationBar].

void main() => runApp(const BottomNavigationBarExampleApp());

class BottomNavigationBarExampleApp extends StatelessWidget {
  const BottomNavigationBarExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: BottomNavigationBarExample(),
    );
  }
}

class BottomNavigationBarExample extends StatefulWidget {
  const BottomNavigationBarExample({super.key});

  @override
  State<BottomNavigationBarExample> createState() =>
      _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState
    extends State<BottomNavigationBarExample> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    Text(
      'Index 3: Settings',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BottomNavigationBar Sample'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
            backgroundColor: Colors.purple,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
            backgroundColor: Colors.pink,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
 */

/* import 'package:flutter/material.dart';
import 'package:flutter_dev/demos/meditation_app/widget/day_picker.dart';

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
 */

import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'ListView with Search'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController editingController = TextEditingController();

  final duplicateItems = List<String>.generate(10000, (i) => "Item $i");
  var items = <String>[];

  @override
  void initState() {
    items = duplicateItems;
    super.initState();
  }

  void filterSearchResults(String query) {
    setState(() {
      items = duplicateItems
          .where((item) => item.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                onChanged: (value) {
                  filterSearchResults(value);
                },
                controller: editingController,
                decoration: InputDecoration(
                    labelText: "Search",
                    hintText: "Search",
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25.0)))),
              ),
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text('${items[index]}'),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
