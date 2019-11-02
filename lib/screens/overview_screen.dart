import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/transactions.dart';
import '../widgets/transaction_item.dart';
import '../widgets/new_transaction_modal.dart';

import '../widgets/main_drawer.dart';

class OverviewScreen extends StatefulWidget {
  static const routeName = '/overview';

  @override
  _OverviewScreenState createState() => _OverviewScreenState();
}

class _OverviewScreenState extends State<OverviewScreen> {
  bool isinit = false;

  Transactions transactions;
  Future<void> transactionFuture;

  @override
  void didChangeDependencies() {
    if (!isinit) {
      isinit = true;
      transactions = Provider.of<Transactions>(context);
      transactionFuture = transactions.getData();
    }

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: MainDrawer(),
        appBar: AppBar(
          title: Text(
            "Overview",
            style: Theme.of(context).textTheme.title,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.add,
            size: 32,
          ),
          onPressed: () {
            showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                builder: (ctx) {
                  return NewTransactionModal(transactions);
                });
          },
        ),
        body: FutureBuilder(
            future: transactionFuture,
            builder: (context, snapshot) {
              print(snapshot.connectionState);
              return snapshot.connectionState == ConnectionState.waiting
                  ? Center(
                      child: CircularProgressIndicator(),
                    )
                  : Container(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Transaction History:",
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          SingleChildScrollView(
                              child: Container(
                            height: MediaQuery.of(context).size.height * 0.69,
                            child: ListView.builder(
                                itemCount: transactions.transactions.length,
                                itemBuilder: (ctx, index) => TransactionItem(
                                    transactions.transactions[index])),
                          ))
                        ],
                      ),
                    );
            }));
  }
}
