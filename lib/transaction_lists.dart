import 'package:expense_app/user_transaction.dart';
import 'package:flutter/material.dart';
import './transaction.dart';
import 'package:intl/intl.dart';


class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  TransactionList(this.transactions);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
     child: ListView.builder(itemBuilder:(ctx,index)
     {
       return  Card(
              child: Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 15,
                    ),
                    decoration: BoxDecoration(
                        border:
                            Border.all(color: Colors.blue[200], width: 2)),
                    padding: EdgeInsets.all(10),
                    child: Text(
                      '\$${transactions[index].amount}',
                      // tx.amount.toString(),
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue[200]),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        transactions[index].title,
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Text(
                        //DateFormat('yyyy/MM/dd').format(tx.date),
                        DateFormat.yMMMMd().format(transactions[index].date),
                        style: TextStyle(color: Colors.blue[300]),
                      )
                    ],
                  )
                ],
              ),
            );
     },
     itemCount: transactions.length,
     ),
         
         
        
      
    );
  }
}
