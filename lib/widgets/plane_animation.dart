import 'package:flutter/material.dart';

const _planeSize = 30.0;

class PlaneAnimation extends StatelessWidget {
  const PlaneAnimation({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      height: size.height,
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Stack(
            children: [
              Positioned(
                left: (constraints.maxWidth / 2) - (_planeSize / 2),
                child: Icon(Icons.flight, color: Colors.red, size: _planeSize),
              ),
              Positioned(
                top: 40,
                left: (constraints.maxWidth / 2) - 5,
                child: Container(
                  color: Colors.grey[300],
                  height: size.height,
                  width: 10,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
