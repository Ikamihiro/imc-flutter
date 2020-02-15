import 'package:flutter/material.dart';

class ShowResult extends StatefulWidget {
  final String resultado;

  ShowResult({Key key, this.resultado}) : super(key: key);

  @override
  _ShowResultState createState() => _ShowResultState();
}

class _ShowResultState extends State<ShowResult> {
  String _resultado;

  @override
  void initState() {
    if (widget.resultado == '0.0' || widget.resultado == '0') {
      _resultado = 'Tente novamente';
    } else {
      _resultado = widget.resultado;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          child: Text(
            'Resultado',
            style: TextStyle(
                color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          margin: EdgeInsets.only(bottom: 30),
          child: Text(
            _resultado,
            style: TextStyle(
                color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
