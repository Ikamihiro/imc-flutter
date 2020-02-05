import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      margin: MediaQuery.of(context).padding,
      child: SizedBox(
        height: 150.0,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Calculadora IMC',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 35
                ),
              ),
              Text(
                'Descubra qual é o seu índice de Massa Corporal',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 15
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
