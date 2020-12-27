import 'package:animaciones/widgets/circle_steps.dart';
import 'package:animaciones/widgets/flight_animation.dart';
import 'package:flutter/material.dart';

class ItemStep extends StatelessWidget {
  final Size size;
  final bool resize;
  final DirectionAnimation orientation;
  final bool intermediate;
  final int delay;

  const ItemStep(
      {Key key,
      this.size,
      this.resize,
      this.orientation,
      this.delay,
      this.intermediate = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * 0.47,
      height: 80,
      child: Stack(
        children: [
          Positioned(
            top: 38,
            right: this.orientation == DirectionAnimation.left ? 16 : null,
            left: this.orientation == DirectionAnimation.right ? 16 : null,
            child: FutureBuilder(
              future: Future.delayed(Duration(milliseconds: delay)),
              builder: (context, snapshot) {
                return snapshot.connectionState == ConnectionState.done
                    ? AnimatedContainer(
                        duration: Duration(milliseconds: 200),
                        height: this.resize ? 6 : 0,
                        width: this.resize ? 24 : 0,
                        color: Colors.grey[300],
                      )
                    : Container();
              },
            ),
          ),
          Positioned(
            right: this.orientation == DirectionAnimation.left ? 40 : null,
            left: this.orientation == DirectionAnimation.right ? 40 : null,
            top: 0,
            child: _buildItemStep(
              context,
              size,
              orientation == DirectionAnimation.left
                  ? Alignment.centerRight
                  : Alignment.centerLeft,
              delay,
            ),
          ),
          Positioned(
            top: 32,
            right: orientation == DirectionAnimation.left ? 0 : null,
            left: orientation == DirectionAnimation.right ? 0 : null,
            child: CircleSteps(intermediateFly: intermediate),
          ),
        ],
      ),
    );
  }

  _buildItemStep(
      BuildContext context, Size size, Alignment aligment, int duration) {
    return FutureBuilder(
      future: Future.delayed(Duration(milliseconds: duration)),
      builder: (context, snapshot) {
        return snapshot.connectionState == ConnectionState.done
            ? TweenAnimationBuilder<double>(
                duration: Duration(milliseconds: 400),
                onEnd: () {},
                tween: Tween(begin: 0.0, end: 1.0),
                builder: (context, value, child) {
                  return Transform.scale(
                    alignment: aligment,
                    scale: value,
                    child: child,
                  );
                },
                child: Container(
                  height: this.resize ? 80 : 0,
                  width: this.resize ? size.width * 0.3 : 0,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.all(
                      Radius.circular(6),
                    ),
                  ),
                ),
              )
            : Container();
      },
    );
  }
}
