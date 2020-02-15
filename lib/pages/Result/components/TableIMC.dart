import 'package:flutter/material.dart';
import './TextStyles.dart';

class TableIMC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 0,
        margin: EdgeInsets.only(left: 30, right: 30, bottom: 30, top: 20),
        color: Color.fromRGBO(240, 240, 240, 1),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Magreza',
                    style: red(),
                  ),
                  Text(
                    '<17',
                    style: red(),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Abaixo do peso',
                    style: yellow(),
                  ),
                  Text(
                    '17 - 18.5',
                    style: yellow(),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Peso Normal',
                    style: green(),
                  ),
                  Text(
                    '18.5 - 25',
                    style: green(),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Acima do peso',
                    style: yellow(),
                  ),
                  Text(
                    '25 - 30',
                    style: yellow(),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Obesidade I',
                    style: black(),
                  ),
                  Text(
                    '30 - 35',
                    style: black(),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Obesidade II (severa)',
                    style: black(),
                  ),
                  Text(
                    '35 - 40',
                    style: black(),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Obesidade III (mórbida)',
                    style: black(),
                  ),
                  Text(
                    '>40',
                    style: black(),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
