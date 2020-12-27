import 'package:animaciones/widgets/header_button_widget.dart';
import 'package:animaciones/widgets/header_tab.dart';
import 'package:flutter/material.dart';

class FirstAnimation extends StatefulWidget {
  FirstAnimation({Key key}) : super(key: key);

  @override
  _FirstAnimationState createState() => _FirstAnimationState();
}

class _FirstAnimationState extends State<FirstAnimation> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.red,
      body: SafeArea(
        child: Container(
          color: Colors.white70,
          child: Stack(
            children: [
              Container(color: Colors.white),
              Container(
                padding: EdgeInsets.symmetric(vertical: 16),
                color: Colors.red,
                height: size.height * 0.3,
                width: size.width,
                child: Column(
                  children: [
                    Text(
                      "Animacion",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          HeaderButton(title: "ONE WAY"),
                          HeaderButton(title: "ROUND"),
                          HeaderButton(title: "MULTICITY", isSelected: true),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                // top:  size.height * 0.2,
                top: 100,
                left: 0,
                bottom: 0,
                right: 0,
                child: Container(
                  height: size.height,
                  width: size.width,
                  margin: EdgeInsets.symmetric(horizontal: 14),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      ),
                    ],
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                    color: Colors.white,
                  ),
                  child: HeaderTab(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
