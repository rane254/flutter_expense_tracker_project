// This file contains the EntryScreen widget which displays a list of entries.
// It also contains the logic for navigating to the AddEntryScreen to add new entries.

import 'package:flutter/material.dart';
import 'package:flutter_expense_tracker_project/screens/add_entry_screen.dart';
import 'package:flutter_expense_tracker_project/screens/entry_detail_screen.dart';
import '../models/entry.dart';

class EntryScreen extends StatefulWidget {
  const EntryScreen({super.key});

  @override
  State<EntryScreen> createState() => _EntryScreenState();
}

class _EntryScreenState extends State<EntryScreen> {
  List<Entry> entries = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Expense Tracker"),
        backgroundColor: Colors.lightBlue,
      ),
      body: ListView.builder(
        itemCount: entries.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(entries[index].description),
            subtitle: Text(entries[index].amount.toString()),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => EntryDetailsScreen(entry: entries[index])));
            },
          );
        }
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _navigateToAddEntryScreen(context);
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  void _navigateToAddEntryScreen(BuildContext context) async {
    final result = await Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => const AddEntryScreen()
        )
    );
    if (result != null) {
      setState(() {
        entries.add(result);
      });
    }
  }
}
