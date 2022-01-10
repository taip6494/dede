import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dédé'),
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
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;
    return Container(
        padding: EdgeInsets.fromLTRB(25, 20, 25, 0),
        child: Row(children: [
          Image.asset(
            'images/dice1.png',
            width: deviceWidth *0.42,
            height: deviceHeight*0.42,
          ),
          Image.asset(
            'images/dice2.png',
            width: deviceWidth *0.42,
            height: deviceHeight*0.42,
          ),
        ]));
  }
}
