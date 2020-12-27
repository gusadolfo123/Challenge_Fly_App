import 'package:flutter/material.dart';

class CircleSteps extends StatelessWidget {
  final bool intermediateFly;

  const CircleSteps({Key key, this.intermediateFly = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 18,
      height: 18,
      decoration: BoxDecoration(
        color: this.intermediateFly ? Colors.green : Colors.red,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          width: 3,
          color: Colors.grey[300].withOpacity(0.8),
        ),
      ),
    );
  }
}
