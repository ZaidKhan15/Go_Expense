import 'package:expense_app/user_transaction.dart';
import 'package:flutter/material.dart';
import './transaction.dart';
import 'package:intl/intl.dart';


class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  TransactionList(this.transactions);
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: transactions.map((tx) {
        return Card(
          child: Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 15,
                ),
                decoration: BoxDecoration(
                    border:
                        Border.all(color: Colors.deepPurpleAccent, width: 2)),
                padding: EdgeInsets.all(10),
                child: Text(
                  '\$${tx.amount}',
                  // tx.amount.toString(),
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.deepPurpleAccent),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    tx.title,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Text(
                    //DateFormat('yyyy/MM/dd').format(tx.date),
                    DateFormat.yMMMMd().format(tx.date),
                    style: TextStyle(color: Colors.deepPurpleAccent),
                  )
                ],
              )
            ],
          ),
        );
      }).toList(),
    );
  }
}
