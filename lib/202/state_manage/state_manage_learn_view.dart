import 'package:flutter/material.dart';
import 'package:flutter_dev/demos/meditation_app/app_settings.dart';

class StateManageLearnView extends StatefulWidget {
  const StateManageLearnView({super.key});

  @override
  State<StateManageLearnView> createState() => _StateManageLearnViewState();
}

class _StateManageLearnViewState extends State<StateManageLearnView> {
  @override
  void initState() {
    super.initState();
  }

  bool _isVisible = false;
  bool _isOpacity = false;
  // Text('data', style: context.textTheme().headline1)
  late AnimationController controller;

  void _changeVisible() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  void _changeOpacity() {
    setState(() {
      _isOpacity = !_isOpacity;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: _isOpacity ? Colors.red : colors.facebookBg,
        shadowColor: _isVisible ? colors.welcomebackground : Colors.amber,
      ),
    );
  }
}
