import 'package:flutter/material.dart';

class ButtonLearn extends StatelessWidget {
  const ButtonLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextButton(
            child: Text('Save', style: Theme.of(context).textTheme.subtitle1),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.pressed)) {
                return Colors.green;
              }
              return const Color.fromARGB(255, 156, 9, 9);
            })),
            onPressed: () {},
          ),
          ElevatedButton(onPressed: () {}, child: const Text('BAL')),
          IconButton(onPressed: () {}, icon: Icon(Icons.abc_rounded)),
          FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.add),
          ),
          SizedBox(
            width: 100,
            child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 158, 169, 5),
                    shape: CircleBorder()),
                onPressed: () {},
                child: const Text('data')),
          ),
          InkWell(
            onTap: () {},
            child: const Text('Inkwell'),
          ),
          Container(
            height: 200,
            color: Colors.white,
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
              ),
              onPressed: () {},
              child: Padding(
                  padding: const EdgeInsets.only(
                      top: 10, bottom: 10, right: 40, left: 40),
                  child: Text(
                    'Place Bid',
                    style: Theme.of(context).textTheme.headlineLarge,
                  ))),
        ],
      ),
    );
  }
}



// Borders:
// CircleBorder(), RoundedRectangleBorder()