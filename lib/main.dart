
import 'package:expense_app/user_transaction.dart';
import 'package:flutter/material.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  

  String titleInput;
  String amountInput;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expense App'),
      ),
      body: SingleChildScrollView(
        child: Column(
            //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                width: double.infinity,
                child: Card(
                  color: Colors.blue[200],
                  child: Container(
                    width: 100,
                    height: 100,
                    child: Text('CHART!!'),
                  ),
                  elevation: 5,
                ),
              ),
            UserTransaction()
            ],
          ),
      ),
      
    );
  }
}
