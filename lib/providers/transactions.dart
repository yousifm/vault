import 'package:flutter/material.dart';

class Transaction {
  final double amount;
  final String description;

  Transaction(this.amount, this.description);
}

class Transactions with ChangeNotifier {
  List<Transaction> _transactions = [
    Transaction(2000, "Laptop"),
    Transaction(500, "Clothes")
  ];

  List<Transaction> get transactions => [..._transactions];
}
