import 'package:flutter/material.dart';

class ProgressCircular extends StatelessWidget {
  final double height;
  final double width;

  ProgressCircular({this.height = 35, this.width = 35});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: height,
        width: width,
        child: CircularProgressIndicator(
          strokeWidth: 2,
          backgroundColor: Colors.black12,
          valueColor: AlwaysStoppedAnimation<Color>(Theme.of(context).primaryColor),
        ),
      ),
    );
  }
}
