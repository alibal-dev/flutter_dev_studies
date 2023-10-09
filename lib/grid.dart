import 'package:flutter/material.dart';

class HomePageGrid extends StatefulWidget {
  const HomePageGrid({super.key});

  @override
  State<HomePageGrid> createState() => HomePageGridState();
}

class HomePageGridState extends State<HomePageGrid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SizedBox(
        height: 500,
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
          ),
          itemCount: 5,
          itemBuilder: (context, index) {
            return InkWell(
                onTap: () {},
                child: Card(
                  shape: RoundedRectangleBorder(
                    side: BorderSide.none,
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  color: Colors.blue,
                  child: Center(
                      child: Text(
                    'ABC',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  )),
                  margin: EdgeInsets.all(15),
                  shadowColor: Colors.grey,
                ));
          },
        ),
      ),
    );
  }
}
