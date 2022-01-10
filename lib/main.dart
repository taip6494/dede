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
      padding: EdgeInsets.fromLTRB(27, 20, 27, 0),
      child: Center(
        child: Row(
          children: [
            Expanded(
              child: TextButton (
                child: Image.asset(
                  'images/dice1.png',
                  width: deviceWidth * 0.42,
                  height: deviceHeight * 0.42,
                ),
                onPressed: () {},
              ),
            ),
            Text("  "),
            Expanded(
              child: TextButton (
                child: Image.asset(
                  'images/dice2.png',
                  width: deviceWidth * 0.42,
                  height: deviceHeight * 0.42,
                ),
                onPressed: () {},
              ),
              ),

          ],
        ),
      ),
    );
  }
}
