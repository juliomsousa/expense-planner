import 'package:flutter/material.dart';
import './transaction_list.dart';
import './new_transactoin.dart';
import '../models/transaction.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTransactons = [
    Transaction(
      id: 't1',
      title: 'New Laptop',
      amount: 799.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Netflix billing',
      amount: 10.80,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Netflix billing',
      amount: 10.80,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Netflix billing',
      amount: 10.80,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Netflix billing',
      amount: 10.80,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Netflix billing',
      amount: 10.80,
      date: DateTime.now(),
    ),
  ];

  _addNewTransaction(String txTitle, double txAmount) {
    final newTx = Transaction(
      title: txTitle,
      amount: txAmount,
      date: DateTime.now(),
      id: DateTime.now().toString(),
    );

    print('transaction is here');

    setState(() {
      _userTransactons.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction(_addNewTransaction),
        TransactionList(_userTransactons),
      ],
    );
  }
}
