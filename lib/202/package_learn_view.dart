// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_dev/202/package/launch_manager.dart';
import 'package:flutter_dev/202/package/loading_bar.dart';
import 'package:url_launcher/url_launcher_string.dart';

class PackageLearnView extends StatefulWidget with LaunchMixin {
  const PackageLearnView({super.key});

  @override
  State<PackageLearnView> createState() => _PackageLearnViewState();
}

class _PackageLearnViewState extends State<PackageLearnView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('YouTubeMusic'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            launchUrlString('https://music.youtube.com/');
          },
        ),
        body: LoadingBar());
  }
}
