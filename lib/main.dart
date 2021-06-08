import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dice'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var leftDiceNumber = 5;

    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              // ignore: deprecated_member_use
              child: FlatButton(
                onPressed: () {
                  print('left buttom got presesed');
                },
                child: Image.asset('images/dice$leftDiceNumber.png'),
              ),
            ), //Image(image: AssetImage('images/dice1.png'),),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              // ignore: deprecated_member_use
              child: FlatButton(
                  onPressed: () {}, child: Image.asset('images/dice3.png')),
            ), //Image(image: AssetImage('images/dice1.png'),),
          ),
        ],
      ),
    );
  }
}
