import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

String output = '0';

class _HomeScreenState extends State<HomeScreen> {
  pressedButton(String buttonText) {
    output = buttonText;
    setState(() {});
  }

  Widget _creatorButton(String buttonText) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ElevatedButton(
        style: ButtonStyle(
            elevation: MaterialStateProperty.all(10),
            backgroundColor: MaterialStateProperty.all(Colors.grey[100])),
        onPressed: () {
          pressedButton(buttonText);
        },
        child: Text(
          buttonText,
          style: const TextStyle(fontSize: 52, color: Colors.black),
        ),
      ),
    );
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
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Expanded(
                child: Container(
                  alignment: const Alignment(0.8, 0.8),
                  decoration: BoxDecoration(
                      border: Border.all(width: 3.0, color: Colors.black12),
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(15.0)),
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
                  const SizedBox(height: 80, width: 83),
                  SizedBox(height: 80, child: _creatorButton('0')),
                  SizedBox(height: 80, width: 166, child: _creatorButton('=')),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
