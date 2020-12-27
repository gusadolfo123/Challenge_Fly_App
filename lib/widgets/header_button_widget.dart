import 'package:flutter/material.dart';

class HeaderButton extends StatelessWidget {
  final String title;
  final bool isSelected;

  const HeaderButton({Key key, this.title, this.isSelected = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
          color: this.isSelected ? Colors.white : Colors.red,
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Text(
        this.title.toUpperCase(),
        style: TextStyle(color: this.isSelected ? Colors.red : Colors.white),
      ),
    );
  }
}
