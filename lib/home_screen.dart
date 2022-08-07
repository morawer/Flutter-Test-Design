import 'package:flutter/material.dart';

void main() => runApp(const HomeScreen());

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
                    borderRadius: BorderRadius.circular(15.0)),
                child: const Text('Prueba 123',
                    style:
                        TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
              ),
              Center(
                child: Expanded(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Expanded(
                          child: OutlinedButton(
                              onPressed: () {},
                              child: const Text('1',
                                  style: TextStyle(fontSize: 42))),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Expanded(
                            child: OutlinedButton(
                                onPressed: () {},
                                child: const Text('2',
                                    style: TextStyle(fontSize: 42)))),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Expanded(
                            child: OutlinedButton(
                                onPressed: () {},
                                child: const Text('3',
                                    style: TextStyle(fontSize: 42)))),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Expanded(
                            child: OutlinedButton(
                                onPressed: () {},
                                child: const Text('+',
                                    style: TextStyle(fontSize: 42)))),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
