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
      child: new OutlineButton(
        color: Colors.grey,
        child: new Text(
          text,
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
        ),
        onPressed: () => {},
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
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
            new Text("Data"),
            new Expanded(child: new Divider()),
            new Container(
              padding: EdgeInsets.all(0.0),
              margin: EdgeInsets.all(0.0),
              child: new Column(
                children: <Widget>[
                  new Row(
                    children: <Widget>[
                      new Expanded(
                        child: new MaterialButton(
                          color: Colors.grey,
                          child: new Text("B"),
                          onPressed: () => {},
                        ),
                      ),
                      new Expanded(
                        child: new MaterialButton(
                          color: Colors.grey,
                          child: new Text("B"),
                          onPressed: () => {},
                        ),
                      ),
                      new Expanded(
                        child: new MaterialButton(
                          color: Colors.grey,
                          child: new Text("B"),
                          onPressed: () => {},
                        ),
                      ),
                    ],
                  ),
                  new Row(
                    children: <Widget>[
                      new Expanded(
                        child: new MaterialButton(
                          color: Colors.grey,
                          child: new Text("B"),
                          onPressed: () => {},
                        ),
                      ),
                      new Expanded(
                        child: new MaterialButton(
                          color: Colors.grey,
                          child: new Text("B"),
                          onPressed: () => {},
                        ),
                      ),
                      new Expanded(
                        child: new MaterialButton(
                          color: Colors.grey,
                          child: new Text("B"),
                          onPressed: () => {},
                        ),
                      ),
                    ],
                  ),
                  new Row(
                    children: <Widget>[
                      new Expanded(
                        child: new MaterialButton(
                          color: Colors.grey,
                          child: new Text("B"),
                          onPressed: () => {},
                        ),
                      ),
                      new Expanded(
                        child: new MaterialButton(
                          color: Colors.grey,
                          child: new Text("B"),
                          onPressed: () => {},
                        ),
                      ),
                      new Expanded(
                        child: new MaterialButton(
                          color: Colors.grey,
                          child: new Text("B"),
                          onPressed: () => {},
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
