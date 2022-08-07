import 'package:flutter/material.dart';

void main() => runApp(const HomeScreen());

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  final int number = 0;

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
                    borderRadius: BorderRadius.circular(15.0)),
                child: const Text('Prueba 123',
                    style:
                        TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
              ),
              const SizedBox(height: 50),
              Row(
                children: [
                  _creatorButton('1'),
                  _creatorButton('2'),
                  _creatorButton('3'),
                  _creatorButton('-'),
                ],
              ),
              Row(
                children: [
                  _creatorButton('4'),
                  _creatorButton('5'),
                  _creatorButton('6'),
                  _creatorButton('+'),
                ],
              ),
              Row(
                children: [
                  _creatorButton('7'),
                  _creatorButton('8'),
                  _creatorButton('9'),
                  _creatorButton('X'),
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
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Expanded(
        child: ElevatedButton(
      style: ButtonStyle(
          elevation: MaterialStateProperty.all(10),
          backgroundColor: MaterialStateProperty.all(Colors.green)),
      onPressed: () {},
      child: Text(
        buttonText,
        style: const TextStyle(fontSize: 52, color: Colors.black),
      ),
    )),
  );
}
