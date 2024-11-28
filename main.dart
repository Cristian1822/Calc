import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: CalculadoraApp(),
  ));
}

class CalculadoraApp extends StatefulWidget {
  @override
  _CalculadoraAppState createState() => _CalculadoraAppState();
}

class _CalculadoraAppState extends State<CalculadoraApp> {
  final TextEditingController num1Controller = TextEditingController();
  final TextEditingController num2Controller = TextEditingController();
  final TextEditingController num3Controller = TextEditingController();

  String resultado = '';

  void calcularMayor() {
    double num1 = double.parse(num1Controller.text);
    double num2 = double.parse(num2Controller.text);
    double num3 = double.parse(num3Controller.text);

    double mayor = num1;
    if (num2 > mayor) mayor = num2;
    if (num3 > mayor) mayor = num3;

    setState(() {
      resultado = 'El número mayor es $mayor';
    });
  }

  void calcularMenor() {
    double num1 = double.parse(num1Controller.text);
    double num2 = double.parse(num2Controller.text);
    double num3 = double.parse(num3Controller.text);

    double menor = num1;
    if (num2 < menor) menor = num2;
    if (num3 < menor) menor = num3;

    setState(() {
      resultado = 'El número menor es $menor';
    });
  }

  void calcularCuadrado() {
    double num1 = double.parse(num1Controller.text);

    setState(() {
      resultado = 'El cuadrado de $num1 es ${num1 * num1}';
    });
  }

  void calcularCubo() {
    double num1 = double.parse(num1Controller.text);

    setState(() {
      resultado = 'El cubo de $num1 es ${num1 * num1 * num1}';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora de Operaciones'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: num1Controller,
              decoration: InputDecoration(labelText: 'Número 1'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: num2Controller,
              decoration: InputDecoration(labelText: 'Número 2'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: num3Controller,
              decoration: InputDecoration(labelText: 'Número 3'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: calcularMayor,
              child: Text('Calcular Mayor'),
            ),
            ElevatedButton(
              onPressed: calcularMenor,
              child: Text('Calcular Menor'),
            ),
            ElevatedButton(
              onPressed: calcularCuadrado,
              child: Text('Calcular Cuadrado de Número 1'),
            ),
            ElevatedButton(
              onPressed: calcularCubo,
              child: Text('Calcular Cubo de Número 1'),
            ),
            SizedBox(height: 20),
            Text(
              resultado,
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
