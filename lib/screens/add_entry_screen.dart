// This file contains the AddEntryScreen widget where users can add new entries.
// It captures the description, amount, and type (expense or income) of the entry.

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddEntryScreen extends StatefulWidget {
  const AddEntryScreen({super.key});

  @override
  State<AddEntryScreen> createState() => _AddEntryScreenState();
}

class _AddEntryScreenState extends State<AddEntryScreen> {
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _amountController = TextEditingController();
  bool _isExpense = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Entry"),
        backgroundColor: Colors.lightBlue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              controller: _descriptionController,
              decoration: const InputDecoration(
                label: Text("Description"),
              ),
            ),
            const SizedBox(
              height: 25.0,
            ),
            TextField(
              controller: _amountController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                label: Text("Amount"),
              ),
            ),
            const SizedBox(
              height: 50.0,
            ),
            Row(
              children: [
                _isExpense ? const Text("Expense") : const Text("Income"),
                const SizedBox(width: 10.0),
                Switch(
                    value: _isExpense,
                    onChanged: (value) {
                      setState(() {
                        _isExpense = value;
                      });
                    }),
                // const Text("Income"),
              ],
            )
          ],
        ),
      ),
    );
  }
}
