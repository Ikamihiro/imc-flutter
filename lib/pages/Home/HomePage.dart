import 'package:flutter/material.dart';
import './components/Header.dart';
import './components/Form.dart';
import './components/CalcularButton.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.blue,
      child: ListView(
        children: <Widget>[
          Header(
            title: 'Calculadora IMC',
            subtitle: 'Descubra qual é o seu índice de Massa Corporal',
          ),
          FormInput(),
        ],
      ),
    );
  }
}
