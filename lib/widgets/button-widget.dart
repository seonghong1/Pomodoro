import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class ButtonWidget extends StatelessWidget {
  final text;
  final color;
  final backGroundColor;
  const ButtonWidget(this.text, this.color, this.backGroundColor, {super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: backGroundColor,
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      ),
      onPressed: () {},
      child: Text(
        text,
        style: TextStyle(
          color: color,
        ),
      ),
    );
  }
}
