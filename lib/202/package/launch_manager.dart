// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

mixin LaunchMixin on Widget {}
void _launchUrl(String url) async {
  if (!(await launchUrl(url as Uri))) {
    throw ('Could not launch $url');
  }
}
