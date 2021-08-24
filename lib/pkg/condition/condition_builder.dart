import 'package:flutter/material.dart';

typedef ConditionBuilderWidget<Widget> = Widget Function();

class ConditionBuilder extends StatelessWidget {
  final ConditionBuilderWidget child;
  final bool condition;
  final double width;
  final double height;

  ConditionBuilder({
    required this.child,
    required this.condition,
    this.height = 0,
    this.width = 0,
  });

  @override
  Widget build(BuildContext context) {
    return condition ? child() : Container(width: width, height: height);
  }
}
