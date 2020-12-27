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
        height: size.height - size.height * 0.3 + 20,
        child: Stack(
          alignment: Alignment.center,
          children: [
            AnimatedPositioned(
              duration: Duration(milliseconds: 400),
              top: this.initialState ? size.height : 10,
              child: PlaneAnimation(),
            ),
            AnimatedPositioned(
              left: (size.width / 2) - 26,
              top: this.initialState ? size.height : 50,
              duration: Duration(milliseconds: 450),
              onEnd: () {},
              child: ItemStep(
                resize: this.resize,
                size: size,
                orientation: DirectionAnimation.right,
                delay: 200,
                child: Container(
                  padding: EdgeInsets.all(6),
                  child: Column(
                    children: [
                      SizedBox(height: 4),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "MRG - ORY",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Colors.grey[600],
                            ),
                          ),
                          Text(
                            "6h 25m",
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w600,
                              color: Colors.grey[600],
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "JUN 05",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Colors.grey[600],
                              ),
                            ),
                            Text(
                              "851",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "9:26 am - 3:43 pm",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey[600],
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                      SizedBox(height: 4),
                    ],
                  ),
                ),
              ),
            ),
            AnimatedPositioned(
              top: this.initialState ? size.height : 120,
              left: 6,
              duration: Duration(milliseconds: 500),
              child: ItemStep(
                orientation: DirectionAnimation.left,
                resize: this.resize,
                size: size,
                intermediate: true,
                delay: 400,
                child: Container(
                  padding: EdgeInsets.all(6),
                  child: Column(
                    children: [
                      SizedBox(height: 4),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "MRG - ORY",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Colors.grey[600],
                            ),
                          ),
                          Text(
                            "6h 25m",
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w600,
                              color: Colors.grey[600],
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "JUN 05",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Colors.grey[600],
                              ),
                            ),
                            Text(
                              "851",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "9:26 am - 3:43 pm",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey[600],
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                      SizedBox(height: 4),
                    ],
                  ),
                ),
              ),
            ),
            AnimatedPositioned(
              top: this.initialState ? size.height : 190,
              left: (size.width / 2) - 26,
              duration: Duration(milliseconds: 550),
              child: ItemStep(
                orientation: DirectionAnimation.right,
                resize: this.resize,
                intermediate: true,
                size: size,
                delay: 600,
                child: Container(
                  padding: EdgeInsets.all(6),
                  child: Column(
                    children: [
                      SizedBox(height: 4),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "MRG - ORY",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Colors.grey[600],
                            ),
                          ),
                          Text(
                            "6h 25m",
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w600,
                              color: Colors.grey[600],
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "JUN 05",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Colors.grey[600],
                              ),
                            ),
                            Text(
                              "851",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "9:26 am - 3:43 pm",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey[600],
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                      SizedBox(height: 4),
                    ],
                  ),
                ),
              ),
            ),
            AnimatedPositioned(
              top: this.initialState ? size.height : 260,
              left: 6,
              duration: Duration(milliseconds: 600),
              onEnd: () {
                this.showContent = true;
                this.resize = true;
                setState(() {});
              },
              child: ItemStep(
                orientation: DirectionAnimation.left,
                resize: this.resize,
                size: size,
                delay: 800,
                child: Container(
                  padding: EdgeInsets.all(6),
                  child: Column(
                    children: [
                      SizedBox(height: 4),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "MRG - ORY",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Colors.grey[600],
                            ),
                          ),
                          Text(
                            "6h 25m",
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w600,
                              color: Colors.grey[600],
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "JUN 05",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Colors.grey[600],
                              ),
                            ),
                            Text(
                              "851",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "9:26 am - 3:43 pm",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey[600],
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                      SizedBox(height: 4),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 20,
              child: TweenAnimationBuilder<double>(
                duration: Duration(milliseconds: 500),
                tween: Tween(begin: 0, end: 1),
                builder: (context, value, child) {
                  return Transform.scale(
                    scale: value,
                    child: child,
                  );
                },
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
              ),
            )
          ],
        ),
      ),
    );
  }
}
