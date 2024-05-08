import 'package:flutter/material.dart';


class ReceiveScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Received Transactions'),
        ),
        body: Padding(
          padding: EdgeInsets.all(20.0),
          child: ReceivedTransactions(),
        ),
      ),
    );
  }
}

class ReceivedTransactions extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(sender: 'John Doe', amount: 0.5),
    Transaction(sender: 'Jane Smith', amount: 1.2),
    // Add more received transactions here
  ];

  @override
  Widget build(BuildContext context) {
    return transactions.isEmpty
        ? Center(
            child: Text('You don\'t have any transactions yet'),
          )
        : ListView.builder(
            itemCount: transactions.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text('From: ${transactions[index].sender}'),
                subtitle: Text('Amount: ${transactions[index].amount}'),
              );
            },
          );
  }
}

class Transaction {
  final String sender;
  final double amount;

  Transaction({required this.sender, required this.amount});
}
