import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Input extends StatelessWidget {
  const Input({
    Key key,
    @required this.konversiController,
  }) : super(key: key);

  final TextEditingController konversiController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: konversiController,
      decoration: InputDecoration(
        hintText: 'Masukkan Suhu Dalam Celcius',
      ),
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      keyboardType: TextInputType.number,
    );
  }
}