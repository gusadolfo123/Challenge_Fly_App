import 'package:flutter/material.dart';

class CircleSteps extends StatelessWidget {
  final bool intermediateFly;

  const CircleSteps({Key key, this.intermediateFly = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 25,
      height: 25,
      child: Stack(children: [
        Positioned(
          top: 0,
          child: Container(
            width: 22,
            height: 22,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                width: 2,
                color: Colors.grey[400].withOpacity(0.8),
              ),
            ),
          ),
        ),
        Positioned(
          top: 5,
          left: 5,
          child: Container(
            width: 12,
            height: 12,
            decoration: BoxDecoration(
              color: this.intermediateFly ? Colors.green : Colors.red,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ]),
    );
  }
}
