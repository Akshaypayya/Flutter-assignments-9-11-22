import 'package:flutter/material.dart';

class FlutterCheckbox extends StatefulWidget {
  @override
  FlutterCheckboxState createState() => FlutterCheckboxState();
}

class FlutterCheckboxState extends State {

  Map<String, bool> numbers = {
    'One' : false,
    'Two' : false,
    'Three' : false,
    'Four' : false,
    'Five' : false,
    'Six' : false,
    'Seven' : false,
  };

  var holder_1 = [];

  getItems(){

    numbers.forEach((key, value) {
      if(value == true)
      {
        holder_1.add(key);
      }
    });

    print(holder_1);
    holder_1.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Column (children: <Widget>[

      ElevatedButton(
        child: Text(" Get Checked Checkbox Items ", style: TextStyle(fontSize: 20),),
        onPressed: getItems,
          ),

      Expanded(
        child :
        ListView(
          children: numbers.keys.map((String key) {
            return new CheckboxListTile(
              title: new Text(key),
              value: numbers[key],
              activeColor: Colors.pink,
              checkColor: Colors.white,
              onChanged: (bool? value) {
                setState(() {
                  numbers[key] = value!;
                });
              },
            );
          }).toList(),
        ),
      ),]);
  }
}
