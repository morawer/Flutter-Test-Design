import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

String output = '0';

String _output = '0';
double num1 = 0;
double num2 = 0;
String operand = "";
String numFinal = ' ';

class _HomeScreenState extends State<HomeScreen> {
  pressedButton(String buttonText) {
    if (buttonText == 'C') {
      _output = '0';
      num1 = 0;
      num2 = 0;
      operand = "";
    } else if (buttonText == '+' ||
        buttonText == '-' ||
        buttonText == 'x' ||
        buttonText == '/') {
      num1 = double.parse(output);
      operand = buttonText;
      _output = "0";
    } else if (buttonText == ".") {
      if (_output.contains(".")) {
        // ignore: avoid_print
        print("Already contains a decimals");
        return;
      } else {
        _output = _output + buttonText;
      }
    } else if (buttonText == "=") {
      num2 = double.parse(output);

      if (operand == "+") {
        _output = (num1 + num2).toString();
      }
      if (operand == "-") {
        _output = (num1 - num2).toString();
      }
      if (operand == "x") {
        _output = (num1 * num2).toString();
      }
      if (operand == "/") {
        _output = (num1 / num2).toString();
      }

      num1 = 0;
      num2 = 0;
      operand = "";
    } else {
      _output = _output + buttonText;
    }

    // ignore: avoid_print
    print(_output);

    setState(() {
      if (_output.endsWith('.0')) {
        output = double.parse(_output).toString();
        output = output.substring(0, output.length - 2);
        // ignore: avoid_print
        print(output);
      }

      if (_output.contains('.')) {
        output = double.parse(_output).toString();
      } else {
        output = int.parse(_output).toString();
      }
    });
  }

  Widget _creatorButton(String buttonText) {
    return TextButton(
        onPressed: () {
          pressedButton(buttonText);
        },
        child: Text(
          buttonText,
          style: const TextStyle(fontSize: 42.0),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Calculadora'),
        ),
        body: Column(
          children: [
            Expanded(
              child: Container(
                alignment: const Alignment(0.8, 0.8),
                decoration: BoxDecoration(
                  border: Border.all(width: 3.0, color: Colors.black12),
                  color: Colors.grey[100],
                ),
                child: Text(output,
                    style: const TextStyle(
                        fontSize: 56, fontWeight: FontWeight.bold)),
              ),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _creatorButton('C'),
                const SizedBox(height: 50, width: 83),
                const SizedBox(height: 50, width: 83),
                _creatorButton('/'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _creatorButton('7'),
                _creatorButton('8'),
                _creatorButton('9'),
                _creatorButton('x'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _creatorButton('4'),
                _creatorButton('5'),
                _creatorButton('6'),
                _creatorButton('+'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _creatorButton('1'),
                _creatorButton('2'),
                _creatorButton('3'),
                _creatorButton('-'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 80, child: _creatorButton('.')),
                SizedBox(height: 80, child: _creatorButton('0')),
                SizedBox(height: 80, width: 166, child: _creatorButton('=')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
