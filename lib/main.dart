import 'package:flutter/material.dart';
import 'package:calculadoraimc/paginas/home.dart';
void main() => runApp(Myapp());
class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Calculadora IMC",
      theme: ThemeData(primaryColor: Colors.blue),
      home: calculadoraimc(),
    );
  }
}