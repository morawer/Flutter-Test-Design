import 'package:flutter/material.dart';

class CalculatorScreen2 extends StatefulWidget {
  const CalculatorScreen2({Key? key}) : super(key: key);

  @override
  State<CalculatorScreen2> createState() => _CalculatorScreen2State();
}

String output = '0';

String _output = '0';
double num1 = 0;
double num2 = 0;
String operand = "";
String numFinal = ' ';

class _CalculatorScreen2State extends State<CalculatorScreen2> {
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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: Colors.black),
      title: 'Material App',
      home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text('Calculadora'),
          ),
          body: Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                    alignment: Alignment.centerRight,
                    margin: const EdgeInsets.only(bottom: 15),
                    width: double.infinity,
                    child:
                        const Text('RESULT', style: TextStyle(fontSize: 36))),
                const Divider(thickness: 3.0, color: Colors.white60),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ButtonCreator(text: 'AC', bgColor: const Color(0xFFB0B1B0)),
                    ButtonCreator(
                        text: '+/-', bgColor: const Color(0xFFB0B1B0)),
                    ButtonCreator(text: '%', bgColor: const Color(0xFFB0B1B0)),
                    ButtonCreator(text: '/', bgColor: const Color(0xFFFD9605)),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ButtonCreator(text: '7'),
                    ButtonCreator(text: '8'),
                    ButtonCreator(text: '9'),
                    ButtonCreator(text: 'X', bgColor: const Color(0xFFFD9605)),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ButtonCreator(text: '4'),
                    ButtonCreator(text: '5'),
                    ButtonCreator(text: '6'),
                    ButtonCreator(text: '-', bgColor: const Color(0xFFFD9605)),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ButtonCreator(text: '1'),
                    ButtonCreator(text: '2'),
                    ButtonCreator(text: '3'),
                    ButtonCreator(text: '+', bgColor: const Color(0xFFFD9605)),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ButtonCreator(text: '0'),
                    ButtonCreator(text: ',', bgColor: const Color(0xFFB0B1B0)),
                    ButtonCreator(text: '=', bgColor: const Color(0xFFFD9605)),
                  ],
                )
              ],
            ),
          )),
    );
  }
}

class ButtonCreator extends StatelessWidget {
  final String text;
  final Color bgColor;
  // ignore: prefer_const_constructors_in_immutables
  ButtonCreator({
    Key? key,
    required this.text,
    bgColor,
  })  : bgColor = bgColor ?? const Color(0xff333333),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
      child: TextButton(
          style: TextButton.styleFrom(
              backgroundColor: bgColor,
              primary: Colors.white,
              shape: const StadiumBorder()),
          child: SizedBox(
              height: 55,
              width: 55,
              child: Center(
                  child: Text(text,
                      style: const TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      )))),
          onPressed: () {}),
    );
  }
}
