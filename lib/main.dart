import 'package:flutter/material.dart';
import 'package:expenses_tracker/screens/intro_screen.dart';
import 'package:expenses_tracker/screens/summary.dart';
import 'package:expenses_tracker/screens/add_expense.dart';

void main() {
  runApp(const ExpensesTrackerApp());
}

class ExpensesTrackerApp extends StatelessWidget {
  const ExpensesTrackerApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      routes: {
        '/': (context) => const IntroScreen(),
        '/summary': (context) => const Summary(),
        '/add': (context) => const AddExpense()
      },
      //home: const IntroScreen(),
    );
  }
}
