import 'package:flutter/material.dart';

class AddExpense extends StatelessWidget {
  const AddExpense({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Add Expense')),
        body: const Center(
          child: FlutterLogo(),
        ));
  }
}
