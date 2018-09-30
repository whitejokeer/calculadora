import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Calculadora',
      theme: new ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: new MyHomePage(title: 'Calculadora'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  String output = "0";

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Container(
        child: new Column(
          children: <Widget>[
            new Container(
              child: new Text(output,
                style: new TextStyle(
                  fontSize: 50.0,
                ),
              ),
              padding: new EdgeInsets.symmetric(
                vertical: 35.0,
                horizontal: 20.0,
              ),
              alignment: Alignment.bottomRight,
            ),
            new Expanded(
                child: new Divider(),
            ),
            new Column(

                children: [
                  new Row(
                      children:[
                        buildButton("7"),
                        buildButton("8"),
                        buildButton("9"),
                        buildButton("/"),
                      ]
                  ),
                  new Row(
                      children:[
                        buildButton("4"),
                        buildButton("5"),
                        buildButton("6"),
                        buildButton("x"),
                      ]
                  ),
                  new Row(
                      children:[
                        buildButton("1"),
                        buildButton("2"),
                        buildButton("3"),
                        buildButton("-"),
                      ]
                  ),
                  new Row(
                      children:[
                        buildButton(","),
                        buildButton("0"),
                        buildButton("00"),
                        buildButton("+"),
                      ]
                  ),
                  new Row(
                      children:[
                        buildButton("Borrar"),
                        buildButton("="),
                      ]
                  ),
              ]
            )
        ]),
      )
    );
  }

  Widget buildButton(String texto){
    return new Expanded(
      child: new RaisedButton(
        shape: BeveledRectangleBorder(),
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        padding: EdgeInsets.all(35.0),
        child: new Text(
            texto,
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold
            ),
        ),
        onPressed: () =>{

        },
      ),
    );
  }
}
