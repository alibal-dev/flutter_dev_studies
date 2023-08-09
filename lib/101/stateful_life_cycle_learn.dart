// ignore_for_file: avoid_print, unused_field

import 'package:flutter/material.dart';

class StatefullLifeCycleLearn extends StatefulWidget {
  const StatefullLifeCycleLearn({super.key, required this.message});
  final String message;
  @override
  State<StatefullLifeCycleLearn> createState() =>
      _StatefullLifeCycleLearnState();
}

class _StatefullLifeCycleLearnState extends State<StatefullLifeCycleLearn> {
  String _message = '';
  late final bool _isOdd;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _computeName();
    print('c');
  }

  @override
  void didUpdateWidget(covariant StatefullLifeCycleLearn oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.message != widget.message) {
      _message = widget.message;
      _computeName();
      setState(() {});
    }
    print('b');
  }

  @override
  void dispose() {
    super.dispose();
    print('alo');
  }

  @override
  void initState() {
    super.initState();
    _message = widget.message;
    _isOdd = widget.message.length.isOdd;
    print('a');
  }

  void _computeName() {
    if (_isOdd) {
      _message += ' cift ';
    } else {
      _message += ' tek ';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: widget.message.length.isOdd
                ? const Text('kelime tek')
                : const Text('kelime çift')),
        body: widget.message.length.isOdd
            ? TextButton(onPressed: () {}, child: Text(widget.message))
            : ElevatedButton(onPressed: () {}, child: Text(widget.message)));
  }
}
