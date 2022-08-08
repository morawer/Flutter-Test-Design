import 'package:flutter/material.dart';

String output = '0';
pressedButton(String buttonText) {
  output = buttonText;
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Calculadora'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Container(
                alignment: const Alignment(0.8, 0.8),
                height: 250.0,
                decoration: BoxDecoration(
                    border: Border.all(width: 3.0, color: Colors.black12),
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(15.0)),
                child: Text(output,
                    style: const TextStyle(
                        fontSize: 56, fontWeight: FontWeight.bold)),
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _creatorButton('C'),
                  const Expanded(child: SizedBox(height: 50)),
                  const Expanded(child: SizedBox(height: 50)),
                  _creatorButton('/'),
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
                  _creatorButton('4'),
                  _creatorButton('5'),
                  _creatorButton('6'),
                  _creatorButton('+'),
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
                  const Expanded(child: SizedBox(height: 80)),
                  Expanded(
                      child: SizedBox(height: 80, child: _creatorButton('0'))),
                  SizedBox(height: 80, width: 185, child: _creatorButton('=')),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _creatorButton(String buttonText) {
  return Expanded(
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: ElevatedButton(
        style: ButtonStyle(
            elevation: MaterialStateProperty.all(10),
            backgroundColor: MaterialStateProperty.all(Colors.grey[100])),
        onPressed: () {
          pressedButton(buttonText);
          // ignore: avoid_print
          print(buttonText);
        },
        child: Text(
          buttonText,
          style: const TextStyle(fontSize: 52, color: Colors.black),
        ),
      ),
    ),
  );
}
