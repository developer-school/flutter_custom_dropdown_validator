import 'package:flutter/material.dart';
import 'package:flutter_dropdown/widgets/account_form.dart';

class AccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Account'),
      ),
      body: Container(
        child: AccountForm(),
      ),
    );
  }
}
