import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final _titleController = TextEditingController();
  final _amountController = TextEditingController();
  final Function _addNewTransactionHandler;

  NewTransaction(this._addNewTransactionHandler);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              controller: _titleController,
              // onChanged: (val) => titleInput = val,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: _amountController,
              // onChanged: (val) => amountInput = val,
            ),
            FlatButton(
              child: Text('Add transaction'),
              onPressed: () => _addNewTransactionHandler(
                _titleController.text,
                double.parse(_amountController.text),
              ),
              textColor: Colors.purple,
            )
          ],
        ),
      ),
    );
  }
}
