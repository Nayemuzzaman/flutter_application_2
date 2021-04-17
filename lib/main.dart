import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new AwesomeButton(),
  ));
}

class AwesomeButton extends StatefulWidget {
  @override
  AwesomeButtonState createState() => new AwesomeButtonState();
}

class AwesomeButtonState extends State<AwesomeButton> {
  int counter = 0;
  List<String> strings = ["Flutter", "Is", "Awesome"];
  String displayedString = "";

  void onPressed() {
    setState(() {
      displayedString = strings[counter];
      if (counter < 2) {
        counter = counter + 1;
      } else {
        counter = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
          title: new Text("StateFul Widget"),
          backgroundColor: Colors.deepOrange),
      body: new Container(
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text(displayedString,
                  style: new TextStyle(
                      fontSize: 30.0, fontWeight: FontWeight.bold)),
              new Padding(padding: new EdgeInsets.all(10.0)),
              new RaisedButton(
                  child: new Text("Press me"),
                  color: Colors.red,
                  onPressed: onPressed)
            ],
          ),
        ),
      ),
    );
  }
}
