// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

class MyCollectionsDemos extends StatefulWidget {
  const MyCollectionsDemos({super.key});

  @override
  State<MyCollectionsDemos> createState() => _MyCollectionsDemosState();
}

class _MyCollectionsDemosState extends State<MyCollectionsDemos> {
  late final List<CollectionModel> _items;

  @override
  void initState() {
    super.initState();
    _items = [
      CollectionModel(
          imagePath: 'assets/imagecollection.png',
          title: 'abstract art1',
          price: 3.4),
      CollectionModel(
          imagePath: 'assets/imagecollection.png',
          title: 'abstract art2',
          price: 3.4),
      CollectionModel(
          imagePath: 'assets/imagecollection.png',
          title: 'abstract art3',
          price: 3.4)
    ];
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _items.length,
      padding: PaddingUtility().paddingGeneral,
      itemBuilder: (context, index) {
        return CardCategory(model: _items[index]);
      },
    );
  }
}

class CardCategory extends StatelessWidget {
  const CardCategory({
    super.key,
    required CollectionModel model,
  }) : _model = model;

  final CollectionModel _model;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 40),
      child: SizedBox(
        height: 300,
        child: Padding(
          padding: PaddingUtility().paddingGeneral,
          child: Column(
            children: [
              Image.asset(
                _model.imagePath,
                fit: BoxFit.fill,
                height: 240,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(_model.title),
                  Text('${_model.price} eth '),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CollectionModel {
  final String imagePath;
  final String title;
  final double price;

  CollectionModel(
      {required this.imagePath, required this.title, required this.price});
}

class PaddingUtility {
  final paddingTop = EdgeInsets.only(top: 10);
  final paddingBottom = EdgeInsets.only(top: 20);
  final paddingGeneral = EdgeInsets.all(20);
}
