import 'package:flutter/material.dart';
import '../Home/components/Header.dart';
import './components/TableIMC.dart';
import './components/LineWhite.dart';
import './components/ShowResult.dart';

class ResultPage extends StatefulWidget {
  final String alturaData;
  final String pesoData;

  ResultPage({Key key, this.alturaData, this.pesoData}) : super(key: key);

  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  double _altura, _peso, _resultado;

  void calcularImc() {
    if (widget.alturaData.isNotEmpty && widget.pesoData.isNotEmpty) {
      print(widget.alturaData);
      print(widget.pesoData);
      _altura = double.parse(widget.alturaData);
      _peso = double.parse(widget.pesoData);
      _resultado = _peso / (_altura * _altura);
    } else {
      _resultado = 0.0;
    }
  }

  @override
  void initState() {
    calcularImc();
    super.initState();
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
          LineWhite(),
          ShowResult(
            resultado: _resultado.round().toString(),
          ),
          Expanded(
            child: Container(
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 30, bottom: 10),
                    child: Text(
                      'Veja sua classificação:',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  TableIMC(),
                  Container(
                    padding: EdgeInsets.only(top: 20),
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
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
