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
            margin: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                    alignment: Alignment.centerRight,
                    margin: const EdgeInsets.only(bottom: 20),
                    width: double.infinity,
                    child:
                        const Text('RESULT', style: TextStyle(fontSize: 36))),
                const Divider(thickness: 3.0, color: Colors.white60),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: TextButton(
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.blue,
                              primary: Colors.white,
                              shape: const StadiumBorder()),
                          child: const SizedBox(
                              height: 65,
                              width: 65,
                              child: Center(
                                  child: Text('1',
                                      style: TextStyle(
                                          fontSize: 36,
                                          fontWeight: FontWeight.bold)))),
                          onPressed: () {}),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: TextButton(
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.blue,
                              primary: Colors.white,
                              shape: const StadiumBorder()),
                          child: const SizedBox(
                              height: 65,
                              width: 65,
                              child: Center(
                                  child: Text('2',
                                      style: TextStyle(
                                          fontSize: 36,
                                          fontWeight: FontWeight.bold)))),
                          onPressed: () {}),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: TextButton(
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.blue,
                              primary: Colors.white,
                              shape: const StadiumBorder()),
                          child: const SizedBox(
                              height: 65,
                              width: 65,
                              child: Center(
                                  child: Text('3',
                                      style: TextStyle(
                                          fontSize: 36,
                                          fontWeight: FontWeight.bold)))),
                          onPressed: () {}),
                    )
                  ],
                )
              ],
            ),
          )),
    );
  }
}
