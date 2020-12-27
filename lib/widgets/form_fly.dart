import 'package:flutter/material.dart';

class FormFly extends StatefulWidget {
  final VoidCallback onChange;

  FormFly({Key key, this.onChange}) : super(key: key);

  @override
  _FormFlyState createState() => _FormFlyState(onChange);
}

class _FormFlyState extends State<FormFly> {
  final _formKey = GlobalKey<FormState>();
  final VoidCallback onChange;

  _FormFlyState(this.onChange);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Form(
      key: _formKey,
      child: SingleChildScrollView(
        child: Container(
          height: size.height - size.height * 0.3 + 20,
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
          child: Column(
            children: [
              _inputText(title: "From"),
              _inputText(title: "To"),
              _inputText(title: "To"),
              _inputText(title: "Passengers", icon: Icons.person),
              Expanded(child: Container()),
              TweenAnimationBuilder<double>(
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
                  child: Icon(Icons.bar_chart_outlined),
                  onPressed: () {
                    this.onChange();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _inputText({String title, IconData icon = Icons.airplanemode_active}) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: title,
        labelStyle: TextStyle(color: Colors.grey[600]),
        icon: Icon(icon, color: Colors.red),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey[300]),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey[300], width: 2),
        ),
        border: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey[600]),
        ),
      ),
    );
  }
}
