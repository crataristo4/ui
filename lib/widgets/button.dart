import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyButton {
  buildButton(String name, Color txtColor, Color bgColor, Function onPressed) {
    return Container(
      margin: EdgeInsets.all(16),

      decoration: BoxDecoration(
          color: bgColor,
        borderRadius: BorderRadius.only(topRight: Radius.circular(16),bottomLeft: Radius.elliptical(15, 30))
      ),
      child: MaterialButton(
        onPressed: onPressed,
        child: Text(
          name,
          style: TextStyle(color: txtColor, fontSize: 18),
        ),
      ),
    );
  }
}
