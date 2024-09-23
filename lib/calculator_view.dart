import 'dart:developer';

import 'package:flutter/material.dart';

class CalculatorView extends StatefulWidget {
  CalculatorView({super.key});

  @override
  State<CalculatorView> createState() => _CalculatorViewState();
}

class _CalculatorViewState extends State<CalculatorView> {
  TextEditingController firstController = TextEditingController();

  TextEditingController secondController = TextEditingController();

  int sum = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator View"),
      ),
      body: Column(
        children: [
          TextField(
            controller: firstController,
            keyboardType: TextInputType.number,
          ),
          TextField(
            controller: secondController,

            keyboardType: TextInputType.number,
          ),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
              onPressed: () {
                sum = int.parse(firstController.text) +
                    int.parse(secondController.text);
                setState(() {

                });
                log(sum.toString());
              },
              child: Text("Add")),
          SizedBox(
            height: 30,
          ),
          Text("Sum is $sum")
        ],
      ),
    );
  }
}
