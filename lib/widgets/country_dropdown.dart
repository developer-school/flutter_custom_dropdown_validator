import 'package:flutter/material.dart';

class CountryDropdown extends StatefulWidget {
  @override
  _CountryDropdownState createState() => new _CountryDropdownState();
}

class _CountryDropdownState extends State<CountryDropdown> {
  String selectedCountry;

  List<DropdownMenuItem<String>> _getCountries() {
    return [
      new DropdownMenuItem(
          child: Text('United Kingdom'), value: 'United Kingdom'),
      new DropdownMenuItem(
          child: Text('United States'), value: 'United States'),
      new DropdownMenuItem(child: Text('Germany'), value: 'Germany'),
      new DropdownMenuItem(child: Text('France'), value: 'France'),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return FormField<String>(
      autovalidate: true,
      validator: (value) {
        if (value == null) {
          return "You'll need to select a country.";
        }
      },
      builder: (FormFieldState<String> countryState) {
        return Column(
          children: <Widget>[
            InputDecorator(
              decoration: InputDecoration(
                  labelText: "Country",
                  errorText:
                      countryState.hasError ? countryState.errorText : null),
              child: DropdownButtonHideUnderline(
                child: DropdownButton(
                  isExpanded: true,
                  value: selectedCountry,
                  items: _getCountries(),
                  hint: Text("Country"),
                  onChanged: (value) {
                    setState(() => selectedCountry = value);
                    countryState.didChange(value);
                    print(selectedCountry);
                    print("Is there an error? ${countryState.hasError}");
                  },
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
