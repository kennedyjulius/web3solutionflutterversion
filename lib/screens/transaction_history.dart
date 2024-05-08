// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';


class TransactionScreen extends StatelessWidget {
  const TransactionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Transaction Screen'),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'All Transactions',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              TransactionList(title: 'All Transactions'),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Completed Transactions',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              TransactionList(title: 'Completed Transactions'),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Canceled Transactions',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              TransactionList(title: 'Canceled Transactions'),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

class TransactionList extends StatelessWidget {
  final String title;

  TransactionList({required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200, // Adjust the height as needed
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: ListView.builder(
        itemCount: 10, // Replace with your actual transaction list length
        itemBuilder: (context, index) {
          // Replace this with your transaction item widget
          return ListTile(
            title: Text('$title - Transaction $index'),
          );
        },
      ),
    );
  }
}
