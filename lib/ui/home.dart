import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new HomeState();
  }
}

class HomeState extends State<Home> {
  Widget createButton(String text) {
    return new Expanded(
      child: new Container(
        margin: const EdgeInsets.all(10.0),
        child:new OutlineButton(
        color: Colors.grey,
        child: new Text(
          text,
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
        ),
        onPressed: () => {},
      ),
      )
    );
  }

  @override
  Widget build(BuildContext context) {

    //TODO: implement control methods

    Widget createButton(String text){
      return new Expanded(
        child: new OutlineButton(
          child: new Text(
            text,
            style: new TextStyle(
              fontStyle: FontStyle.normal,
              fontSize: 24,
              fontWeight: FontWeight.w500
            ),
            ),
          padding: EdgeInsets.all(18.4),
          onPressed: ()=>{},
        ),
      );
    }


    // TODO: implement build
    return new Scaffold(
      backgroundColor: Colors.blueGrey.shade100,
      appBar: new AppBar(
        title: Text("Calculator"),
        backgroundColor: Colors.blueGrey,
      ),
      body: new Container(
        child: new Column(
          children: <Widget>[
            new Text("Z"),

            new Expanded(child:new Divider()),
            new Column(
              children: <Widget>[
                new Row(
                  children: <Widget>[
                    createButton("√"),
                    createButton("0"),
                    createButton("00"),
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
