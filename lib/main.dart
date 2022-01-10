import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dédé'),
          backgroundColor: Colors.red,
        ),
        body: DiceState(),
      ),
    ),
  );
}
class DiceState extends StatefulWidget{
  @override
  DicePage createState() => DicePage();
}


class DicePage extends State<DiceState> {

  int leftDiceNumber = 5;
  int rightDiceNumber = 4;
  void OnClicked(){
    setState((){
      var random = new Random();
      leftDiceNumber = random.nextInt(6) +1;
      rightDiceNumber = random.nextInt(6) +1;
    },);
  }

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
                onPressed: () {
                  OnClicked();
                },
                child: Image.asset(
                  'images/dice$leftDiceNumber.png',
                  width: deviceWidth * 0.42,
                  height: deviceHeight * 0.42,
                ),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  OnClicked();
                },
                child: Image.asset(
                  'images/dice$rightDiceNumber.png',
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
