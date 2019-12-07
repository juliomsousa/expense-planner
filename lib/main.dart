import 'package:expense_planner/widgets/transaction_list.dart';
import 'package:flutter/material.dart';
import './widgets/new_transactoin.dart';
import 'models/transaction.dart';

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

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
    
    setState(() {
      _userTransactons.add(newTx);
    });
  }

  void _startAddNewTransaction(BuildContext ctx) {
    showModalBottomSheet(
      context: ctx,
      builder: (_) => GestureDetector(
        onTap: () {},
        child: NewTransaction(_addNewTransaction),
        behavior: HitTestBehavior.opaque,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () => _startAddNewTransaction(context),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              width: double.infinity,
              child: Card(
                color: Colors.blue,
                child: Text('CHART'),
                elevation: 5,
              ),
            ),
            TransactionList(_userTransactons),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => _startAddNewTransaction(context),
      ),
    );
  }
}
