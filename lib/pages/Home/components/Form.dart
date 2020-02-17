import 'package:IMC/pages/Result/ResultPage.dart';
import 'package:flutter/material.dart';
import './CalcularButton.dart';
import './Widgets.dart';

class FormInput extends StatefulWidget {
  @override
  _FormInputState createState() => _FormInputState();
}

class _FormInputState extends State<FormInput> {
  final TextEditingController _controllerAltura = new TextEditingController();
  final TextEditingController _controllerPeso = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      margin: MediaQuery.of(context).padding,
      child: Column(
        children: <Widget>[
          IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: Column(
                      children: <Widget>[
                        textLabel("Altura (m)"),
                        Padding(
                          padding: EdgeInsets.all(7),
                        ),
                        inputText(_controllerAltura),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: refreshButton(() {
                    _controllerAltura.clear();
                    _controllerPeso.clear();
                  }),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(right: 20.0),
                    child: Column(
                      children: <Widget>[
                        textLabel("Peso (kg)"),
                        Padding(
                          padding: EdgeInsets.all(7),
                        ),
                        inputText(_controllerPeso),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          IntrinsicHeight(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: CalcularButton(
                    calcular: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ResultPage(
                                    alturaData: _controllerAltura.text,
                                    pesoData: _controllerPeso.text,
                                  )));
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
