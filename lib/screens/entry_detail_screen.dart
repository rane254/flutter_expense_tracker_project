// This file contains the EntryDetailScreen widget which displays details of a specific entry.

import 'package:flutter/material.dart';
import '../models/entry.dart';

class EntryDetailsScreen extends StatelessWidget {
  final Entry entry;

  const EntryDetailsScreen({super.key, required this.entry});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Entry Details"),
        backgroundColor: Colors.lightBlue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 25.0),
            Text("Description: ${entry.description}",
            style: const TextStyle(
              fontSize: 18.0,
                fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(height: 25.0),
            Text("Date: ${entry.date}",
              style: const TextStyle(
                fontSize: 18.0,
                  fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(height: 25.0),
            Text("Amount: ${entry.amount}",
              style: const TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(height: 25.0),
          ],
        ),
      ),
    );
  }
}
