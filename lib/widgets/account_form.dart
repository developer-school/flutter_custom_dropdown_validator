import 'package:flutter/material.dart';
import 'package:flutter_dropdown/widgets/country_dropdown.dart';

class AccountForm extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return new Form(
      key: _formKey,
      autovalidate: true,
      child: Column(
        children: <Widget>[
          ListTile(
            leading: const Icon(Icons.location_on),
            title: CountryDropdown(),
          )
        ],
      ),
    );
  }
}
