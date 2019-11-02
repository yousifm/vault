import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:intl/intl.dart';

const API_KEY = "AIzaSyBHMqzOtz6yd-9HHkIlD8ClUJvasUq5sWo";
const LINK = "https://vault-8e37c.firebaseio.com/transaction";

class Transactions with ChangeNotifier {
  List _transactions = [];
  bool _isLoading;

  getData() async {
    _isLoading = true;

    final response = await http.get("$LINK.json?key=$API_KEY");

    _isLoading = false;

    if (response.statusCode == 200) {
      print('oi');
      _transactions = json.decode(response.body);
      notifyListeners();
    } else {
      print("not oi");
      throw response.body;
    }
  }

  addTransaction(
      {double amount,
      String category,
      String store_name,
      DateTime date}) async {
    Map t = {
      "amount": amount,
      "category": category,
      "date": DateFormat('dd/MM/yyyy').format(DateTime.now()),
      "medium": "Cash",
      "store": store_name
    };

    _transactions.insert(0, t);
    notifyListeners();

    final response =
        await http.put("$LINK/${_transactions.length - 1}.json?key=$API_KEY",
            body: json.encode({
              'amount': amount,
              'category': category,
              'store': store_name,
              'medium': "Cash",
              'date': DateFormat('dd/MM/yyyy').format(DateTime.now())
            }));

    if (response.statusCode != 200) {
      print(response.body);
      _transactions.remove(t);
    }
    notifyListeners();
  }

  bool get isLoading => _isLoading;
  List<dynamic> get transactions => [..._transactions];
}
