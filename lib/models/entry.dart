// This file defines the data model for each entry.
// Each entry has a description, amount, and date.

class Entry {
  final String description;
  final double amount;
  final DateTime date;

  // constructor
  Entry({
    required this.description,
    required this.amount,
    required this.date
  });
}
