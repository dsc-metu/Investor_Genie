import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black54,
        appBar: AppBar(
          title: Text('Investor Genie'),
          centerTitle: true,
          backgroundColor: Colors.purple,
        ),
        body: GenieAppStateless(),
      ),
    ),
  );
}

class GenieApp extends StatefulWidget {
  @override
  _GenieAppState createState() => _GenieAppState();
}

imageShortCut(int num) {
  return Image.asset('images/money$num.png');
}

class _GenieAppState extends State<GenieApp> {
  var randomNum = 1;

  void predictNewCurrency() {
    setState(() {
      randomNum = Random().nextInt(4) + 1;
      print(randomNum);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            imageShortCut(1),
            imageShortCut(2),
            imageShortCut(3),
            imageShortCut(4),
            imageShortCut(5),
          ],
        ),
        Container(
          height: 150,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset('images/money$randomNum.png'),
            Column(
              children: [
                FlatButton(
                  color: Colors.purple[800],
                  onPressed: () {
                    predictNewCurrency();
                  },
                  child: Text(
                    "Push this button to see the future",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Image.asset('images/genie.jpg'),
              ],
            )
          ],
        )
      ],
    );
  }
}

/*                            STATELESSS                           */

class GenieAppStateless extends StatelessWidget {
  var randomNum = 1;

  void predictNewCurrency() {
    randomNum = Random().nextInt(4) + 1;
    print(randomNum);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            imageShortCut(1),
            imageShortCut(2),
            imageShortCut(3),
            imageShortCut(4),
            imageShortCut(5),
          ],
        ),
        Container(
          height: 150,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset('images/money$randomNum.png'),
            Column(
              children: [
                FlatButton(
                  color: Colors.purple[800],
                  onPressed: () {
                    predictNewCurrency();
                  },
                  child: Text(
                    "Push this button to see the future",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Image.asset('images/genie.jpg'),
              ],
            )
          ],
        )
      ],
    );
  }
}
