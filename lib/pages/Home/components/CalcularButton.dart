import 'package:flutter/material.dart';

class CalcularButton extends StatelessWidget {
  final Function calcular;
  CalcularButton({Key key, this.calcular});

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
        onPressed: calcular,
        color: Colors.white,
        textColor: Colors.blue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
        ),
      ),
    );
  }
}