import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dev/202/service/postmodel.dart';

class ServiceLearn extends StatefulWidget {
  const ServiceLearn({super.key});

  @override
  State<ServiceLearn> createState() => _ServiceLearnState();
}

class _ServiceLearnState extends State<ServiceLearn> {
  List<PostModel>? _items;
  PostModel? _singleModel;
  bool _isList = false;
  String? name;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    fetchPostItems();
    name = 'Ali';
  }

  Future<void> fetchPostItems() async {
    setState(() {
      _isLoading = true;
    });
    final response =
        await Dio().get('https://jsonplaceholder.typicode.com/posts');
    print(response);

    if (response.statusCode == HttpStatus.ok) {
      final _data = response.data;
      if (_data is List) {
        setState(() {
          _isList = true;
          _items = _data.map((e) => PostModel.fromJson(e)).toList();
        });
      } else {
        setState(() {
          _isList = false;
          Map<String, dynamic> mapped = _data;
          _singleModel = PostModel.fromJson(mapped);
        });
      }
    }
    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name ?? ''),
        actions: [
          _isLoading ? CircularProgressIndicator() : const SizedBox.shrink()
        ],
      ),
      body: _isList
          ? ListView.builder(
              itemCount: _items?.length ?? 0,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    title: Text(
                      _items?[index].title ?? ' ',
                      style: TextStyle(color: Colors.white),
                    ),
                    subtitle: Text(_items?[index].body ?? ' '),
                  ),
                );
              },
            )
          : Text(_singleModel?.body ?? "-"),
    );
  }
}
