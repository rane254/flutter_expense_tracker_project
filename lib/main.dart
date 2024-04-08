// This is the entry point of the application where the MyApp widget is defined.
// It sets up the MaterialApp and sets EntryScreen as the home screen.

import 'package:flutter/material.dart';
import 'package:flutter_expense_tracker_project/screens/entry_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Expense Tracker",
      theme: ThemeData(
        primarySwatch: Colors.deepPurple
      ),
      home: const EntryScreen(),
    );
  }
}
