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
  var leftDiceNumber = 5;
  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;
    return Container(
      child: Center(
        child: Row(
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {},
                child: Image.asset(
                  'images/dice$leftDiceNumber.png',
                  width: deviceWidth * 0.42,
                  height: deviceHeight * 0.42,
                ),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {},
                child: Image.asset(
                  'images/dice$leftDiceNumber.png',
                  width: deviceWidth * 0.42,
                  height: deviceHeight * 0.42,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


