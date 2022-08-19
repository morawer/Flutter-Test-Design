import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Test designs"), centerTitle: true),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () =>
                      Navigator.pushNamed(context, "calculatorDesign1"),
                  child: const Text("Calculator Design 1")),
              ElevatedButton(
                  onPressed: () =>
                      Navigator.pushNamed(context, "calculatorDesign1"),
                  child: const Text("Calculator Design 2"))
            ],
          ),
        ],
      ),
    );
  }
}
