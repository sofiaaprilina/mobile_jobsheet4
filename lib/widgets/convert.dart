import 'package:flutter/material.dart';

class Convert extends StatelessWidget {
  final Function konvertHandler;
  Convert({
    Key key, @required this.konvertHandler,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: konvertHandler,
      child: Container(
        width: 320.0,
        color: Colors.blue,
        child: Text('Konversi Suhu', textAlign: TextAlign.center,),
      ),
    );
  }
}