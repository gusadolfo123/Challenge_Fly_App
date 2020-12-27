import 'package:animaciones/widgets/item_step.dart';
import 'package:animaciones/widgets/plane_animation.dart';
import 'package:flutter/material.dart';

enum DirectionAnimation { left, right }

class FlightAnimation extends StatefulWidget {
  FlightAnimation({Key key}) : super(key: key);

  @override
  _FlightAnimationState createState() => _FlightAnimationState();
}

class _FlightAnimationState extends State<FlightAnimation>
    with TickerProviderStateMixin {
  bool initialState = true;
  bool showContent = false;
  bool resize = false;

  @override
  void initState() {
    super.initState();
    this.initialState = true;
    this.showContent = false;
    this.resize = false;
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Container(
        height: size.height,
        child: Stack(
          alignment: Alignment.center,
          children: [
            AnimatedPositioned(
              duration: Duration(milliseconds: 400),
              top: this.initialState ? size.height : 20,
              child: PlaneAnimation(),
            ),
            AnimatedPositioned(
              left: (size.width / 2) - 29,
              top: this.initialState ? size.height : 100,
              onEnd: () {},
              child: Container(
                width: size.width * 0.48,
                height: 80,
                child: ItemStep(
                  resize: this.resize,
                  size: size,
                  orientation: DirectionAnimation.right,
                  delay: 200,
                ),
              ),
              duration: Duration(milliseconds: 600),
            ),
            AnimatedPositioned(
              top: this.initialState ? size.height : 160,
              left: 0,
              duration: Duration(milliseconds: 800),
              child: ItemStep(
                orientation: DirectionAnimation.left,
                resize: this.resize,
                size: size,
                intermediate: true,
                delay: 300,
              ),
            ),
            AnimatedPositioned(
              top: this.initialState ? size.height : 220,
              left: (size.width / 2) - 29,
              duration: Duration(milliseconds: 1000),
              child: ItemStep(
                orientation: DirectionAnimation.right,
                resize: this.resize,
                intermediate: true,
                size: size,
                delay: 400,
              ),
            ),
            AnimatedPositioned(
              top: this.initialState ? size.height : 280,
              left: 0,
              onEnd: () {
                this.showContent = true;
                this.resize = true;
                setState(() {});
              },
              duration: Duration(milliseconds: 1200),
              child: ItemStep(
                orientation: DirectionAnimation.left,
                resize: this.resize,
                size: size,
                delay: 500,
              ),
            ),
            Positioned(
              bottom: 10,
              child: FloatingActionButton(
                backgroundColor: Colors.red,
                child: Icon(Icons.bar_chart),
                onPressed: () {
                  this.initialState = !this.initialState;
                  this.showContent = false;
                  this.resize = false;
                  setState(() {});
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
