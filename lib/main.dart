import 'package:flutter/material.dart';
import 'widgets/input.dart';
import 'widgets/result.dart';
import 'widgets/convert.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  // double _celciusToKelvin = 273;
  @override
  _MyAppState createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  //untuk input user
  TextEditingController konversiController = new TextEditingController();
  //variabel untuk konverter
  double _inputUser = 0;
  String _newValue = "Kelvin";
  double _result = 0;

  var listItem = ["Kelvin","Reamur"];

  void _konversiSuhu(){
    setState(() {
      _inputUser = double.parse(konversiController.text);
      if(_newValue == "Kelvin")
        _result = _inputUser + 273;
      else
        _result = (4 / 5) * _inputUser;
    });
  }

  void dropdownOnChanged(String changeValue) {
    setState(() {
      _newValue = changeValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Konverter Suhu'),
        ),
        body: Container(
          margin: EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Input(konversiController: konversiController),
              DropdownButton<String>(
                items: listItem.map((String value){
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),);
                }).toList(),
                value: _newValue,
                onChanged: dropdownOnChanged,
              ),
              Result(result: _result,),
              Convert(konvertHandler: _konversiSuhu),
            ],
          ),
        ),
      ),
    );
  }
}
