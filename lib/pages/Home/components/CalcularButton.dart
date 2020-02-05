import 'package:flutter/material.dart';

class CalcularButton extends StatelessWidget {
  double altura, peso;

  CalcularButton({Key key, this.altura, this.peso}) : super(key: key);

  @override 
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(50),
      child: RaisedButton(
        padding: EdgeInsets.symmetric(vertical: 20),
        child: Text(
          "Calcular", 
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),
        ),
        onPressed: () {},
        color: Colors.white,
        textColor: Colors.blue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
        ),
      ),
    );
  }
}