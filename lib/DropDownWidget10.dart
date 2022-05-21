// ignore_for_file: prefer_const_constructors, no_logic_in_create_state

import 'package:flutter/material.dart';
import 'main.dart';

String dropdownvalue = '';
bool dropdownflag = false;

var items = [
  '',
];

class DropDown10 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    if (dropdownflag == false) {
      for (int i = 0; i < Place!.length; i++) {
        String value = Place![i].toString();
        items.add(
          value.replaceAll('[', '').replaceAll(']', '').replaceAll('  ', ''),
        );
      }
      dropdownflag = true;
    }
    return DropDownState();
  }
}

class DropDownState extends State<DropDown10> {
  // var items = ['Αρχική', 'Τυχαία', 'Επανάχρηση', 'Άλλο'];

  bool flag = false;
  bool option = false;
  var _value;

  DropDownState();

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.green;
    }

    return Column(children: [
      Container(
          padding: EdgeInsets.all(2),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.greenAccent[400]),
          child: DropdownButton(
            dropdownColor: Colors.greenAccent[400],
            alignment: Alignment.center,
            style: TextStyle(
              color: Colors.white,
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
            iconEnabledColor: Colors.white,
            icon: Icon(Icons.arrow_drop_down_circle),
            borderRadius: BorderRadius.circular(30.0),
          )),
    ]);
  }
}
