import 'package:flutter/material.dart';
import 'package:flutter_dropdown/pages/account_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: AccountPage(),
    );
  }
}
