import 'package:flutter/material.dart';

Widget textLabel(String text) {
  return Text(
    text,
    style: TextStyle(
      fontSize: 20, 
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
  );
}

Widget inputText(TextEditingController _controller) {
  return TextField(
    controller: _controller,
    decoration: InputDecoration(
      filled: true,
      fillColor: Colors.white,
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(
          color: Colors.transparent
        ),
      )
    ),
  );
}

Widget refreshButton(Function tap) {
  return IconButton(
    color: Colors.white,
    icon: Icon(Icons.refresh),
    onPressed: tap,
    iconSize: 60,
  );
}