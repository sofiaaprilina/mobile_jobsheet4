import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result({
    Key key,
    @required double celciusToKelvin,
    @required double celciusToReamur,
  }) : _celciusToKelvin = celciusToKelvin, _celciusToReamur = celciusToReamur, super(key: key);

  final double _celciusToKelvin;
  final double _celciusToReamur;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: <Widget>[
            Text('Suhu dalam Kelvin'),
            Text(
              '$_celciusToKelvin',
              style: TextStyle(fontSize: 50),
            ),
          ],
        ),
        Column(
          children: <Widget>[
            Text('Suhu dalam Reamur'), 
            Text(
              '$_celciusToReamur',
              style: TextStyle(fontSize: 50),
            ),
          ],
        ),
      ],
    );
  }
}