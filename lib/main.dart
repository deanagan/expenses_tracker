import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sprouts_tracker/screens/intro_screen.dart';
import 'package:sprouts_tracker/screens/summary_screen.dart';
import 'package:sprouts_tracker/screens/add_entry_screen.dart';

void main() {
  runApp(const SproutsTrackerApp());
}

class SproutsTrackerApp extends StatelessWidget {
  const SproutsTrackerApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      routes: {
        '/': (context) => const IntroScreen(),
        '/summary': (context) => const SummaryScreen(),
        '/add': (context) => const AddEntryScreen()
      },
      //home: const IntroScreen(),
    );
  }
}
