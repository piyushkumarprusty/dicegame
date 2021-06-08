import 'dart:math';
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

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  @override
  Widget build(BuildContext context) {
    //var leftDiceNumber = 4;

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
                  setState(() {
                    leftDiceNumber = Random().nextInt(6) + 1;
                    //we dont have zero so add   //random math dart
                    print('dicenum = $leftDiceNumber');
                  });
                  //print('left buttom got presesed');
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
                onPressed: () {
                  setState(() {
                    rightDiceNumber = Random().nextInt(6) + 1;
                  });
                },
                child: Image.asset('images/dice$rightDiceNumber.png'),
              ),
            ), //Image(image: AssetImage('images/dice1.png'),),
          ),
        ],
      ),
    );
  }
}


// class DicePage extends StatelessWidget {
//   @override

  
// }
