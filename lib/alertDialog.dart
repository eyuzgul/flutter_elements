import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'RaisedButton',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: 'Arial',
                  fontSize: 20.0,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold),
            ),
            RaisedButton(
              color: Colors.pinkAccent,
              child: Text(
                "Deneme",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                _showDialog();
              },
            ),
          ],
        ),
      ),
    );
  }

  _showDialog() {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("dialog basligi"),
            content: Text("diyalog içeriği olacak metin"),
            // shape:
            //     RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            actions: [
              MaterialButton(
                child: Text("Evet"),
                shape: StadiumBorder(),
                minWidth: 100,
                color: Colors.pinkAccent,
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              MaterialButton(
                child: Text("Hayır"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        });
  }
}
