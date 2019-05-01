import 'package:flutter/material.dart';
import '../control/controller.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new HomeState();
  }
}

class HomeState extends State<Home> {
  //TODO: implement calculator operation
  var output = "0";

  void calculate(String text) {
    String temp = "0";
    var controller = new CalculatorController();
    if (text == "AC") {
      temp = '0';
    } else if (text == "C") {
      temp = output;
      temp = temp.substring(0, temp.length - 1);
      if (temp.isEmpty) {
        temp = "0";
      }
    } else if (controller.isOperand(text)) {
      debugPrint("is operand");
    } else if (output == "0") {
      temp = text;
    } else {
      temp = output + text;
    }

    setState(() {
      output = temp;
    });
  }

  Widget createButton(String text) {
    return new Expanded(
      child: new OutlineButton(
          child: new Text(
            text,
            style: new TextStyle(
                fontStyle: FontStyle.normal,
                fontSize: 24,
                fontWeight: FontWeight.w500),
          ),
          padding: EdgeInsets.all(18.4),
          onPressed: () => calculate(text)),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      backgroundColor: Colors.blueGrey.shade100,
      appBar: new AppBar(
        title: Text("Calculator"),
        backgroundColor: Colors.blueGrey,
        actions: <Widget>[
          new IconButton(
            icon: new Icon(Icons.history),
            onPressed: () => {},
          ),
          new IconButton(
            icon: new Icon(Icons.info),
            onPressed: () => {},
          ),
        ],
      ),
      body: new Container(
        child: new Column(
          children: <Widget>[
            new Container(
              margin: const EdgeInsets.only(top: 24, right: 8),
              alignment: Alignment.centerRight,
              child: new Text(
                output,
                style: new TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            new Expanded(child: new Divider()),
            new Column(
              children: <Widget>[
                new Row(
                  children: <Widget>[
                    createButton("√"),
                    createButton("x!"),
                    createButton("π"),
                    createButton("+"),
                  ],
                ),
                new Row(
                  children: <Widget>[
                    createButton("7"),
                    createButton("8"),
                    createButton("9"),
                    createButton("-"),
                  ],
                ),
                new Row(
                  children: <Widget>[
                    createButton("4"),
                    createButton("5"),
                    createButton("6"),
                    createButton("*"),
                  ],
                ),
                new Row(
                  children: <Widget>[
                    createButton("1"),
                    createButton("2"),
                    createButton("3"),
                    createButton("/"),
                  ],
                ),
                new Row(
                  children: <Widget>[
                    createButton("0"),
                    createButton("00"),
                    createButton("."),
                    createButton("%"),
                  ],
                ),
                new Row(
                  children: <Widget>[
                    createButton("AC"),
                    createButton("C"),
                    createButton("="),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
