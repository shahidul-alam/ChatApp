import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  RoundedButton(
      {this.text, this.colour, this.textStyle, @required this.onpressed});
  final String text;
  final Color colour;
  final Function onpressed;
  final String textStyle;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(vertical: 16.0),
        child: Material(
          elevation: 5.0,
          color: colour,
          borderRadius: BorderRadius.circular(30.0),
          child: MaterialButton(
            onPressed: onpressed,
            minWidth: 25,
            height: 50.0,
            child: Text(
              text,
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        ));
  }
}
