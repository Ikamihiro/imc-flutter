import 'package:flutter/material.dart';
import '../Home/components/Header.dart';

class ResultPage extends StatefulWidget {
  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  TextStyle red() {
    return TextStyle(
        color: Colors.red, fontWeight: FontWeight.bold, fontSize: 20);
  }

  TextStyle yellow() {
    return TextStyle(
        color: Color.fromRGBO(255, 188, 88, 1),
        fontWeight: FontWeight.bold,
        fontSize: 20);
  }

  TextStyle green() {
    return TextStyle(
        color: Colors.green, fontWeight: FontWeight.bold, fontSize: 20);
  }

  TextStyle black() {
    return TextStyle(
        color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20);
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.blue,
      child: Column(
        children: <Widget>[
          Header(
            title: 'Calculadora IMC',
            subtitle: 'Descubra qual é o seu índice de Massa Corporal',
          ),
          Container(
            height: 1.5,
            color: Colors.white,
            margin: EdgeInsets.only(left: 20, right: 20, bottom: 30),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Text(
                  'Resultado',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 30),
                child: Text(
                  '17',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Expanded(
            child: Container(
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 30, bottom: 10),
                    child: Text(
                      'Peso Ideal: 55 Kg',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 35,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Card(
                      elevation: 0,
                      margin: EdgeInsets.only(
                          left: 30, right: 30, bottom: 30, top: 20),
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
                      )),
                  Container(
                    padding: EdgeInsets.only(top: 20),
                    child: RaisedButton(
                      onPressed: () {},
                      color: Colors.blue,
                      child: Text(
                        'Calcular novamente',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      padding: EdgeInsets.only(
                          left: 70, right: 70, top: 20, bottom: 20),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
