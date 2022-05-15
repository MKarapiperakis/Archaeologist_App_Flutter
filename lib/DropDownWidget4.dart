// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class DropDown4 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DropDownState();
  }
}

class DropDownState extends State<DropDown4> {
  String dropdownvalue = 'Ομοιογενής';

  var items = [
    'Ομοιογενής',
    'Ανομοιογενής',
    'Πολύ συμπαγής',
    'Συμπαγής',
    'Αρκετά συμπαγής',
    'Χαλαρή',
    'Πολύ χαλαρή'
  ];

  DropDownState();

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      dropdownColor: Colors.white,
      alignment: Alignment.center,
      style: TextStyle(
        color: Colors.blue,
        fontSize: 18,
        fontWeight: FontWeight.w500,
      ),
      value: dropdownvalue,
      items: items.map((String items) {
        return DropdownMenuItem(value: items, child: Text(items));
      }).toList(),
      onChanged: (String? newValue) {
        setState(() {
          dropdownvalue = newValue!;
        });
      },
      iconSize: 27,
      iconEnabledColor: Colors.blue,
      icon: Icon(Icons.arrow_drop_down_circle),
      borderRadius: BorderRadius.circular(10.0),
    );
  }
}
