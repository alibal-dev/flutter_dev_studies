import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dev/202/service/comments_model.dart';

class ServiceLearnNew extends StatefulWidget {
  const ServiceLearnNew({super.key});

  @override
  State<ServiceLearnNew> createState() => _ServiceLearnNewState();
}

class _ServiceLearnNewState extends State<ServiceLearnNew> {
  @override
  void initState() {
    super.initState();
    // fetchComments();
  }

  List<Comments>? _commentList;
  bool _isLoading = false;
  bool _isList = false;
  Comments? _singleModel;

  Future<void> fetchComments() async {
    _isLoading = true;
    Dio dio = Dio();
    final response =
        await dio.get('https://jsonplaceholder.typicode.com/posts/1/comments');
    print(response.data);

    if (response.statusCode == HttpStatus.ok) {
      if (response.data is List) {
        setState(() {
          _isList = true;
          final responseData = response.data;
          _commentList = responseData.map((e) => Comments.fromJson(e)).toList();
        });
      } else {
        setState(() {
          _isList = false;
          Map<String, dynamic> mapped = response.data;
          _singleModel = Comments.fromJson(mapped);
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
        title: InkWell(
          onTap: () async {
            await fetchComments();
          },
          child: Text(
            'Comments List',
          ),
        ),
        actions: [
          _isLoading ? CircularProgressIndicator() : const SizedBox.shrink()
        ],
      ),
      body: _isList
          ? ListView.builder(
              itemCount: _commentList?.length ?? 0,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    title: Text(
                      _commentList?[index].name ?? ' ',
                      style: TextStyle(color: Colors.white),
                    ),
                    subtitle: Text(_commentList?[index].body ?? ' '),
                  ),
                );
              },
            )
          : Text(_singleModel?.body ?? "-------------------------"),
    );
  }
}
