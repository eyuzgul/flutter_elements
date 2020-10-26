import 'package:flutter/material.dart';

class LayoutsPage extends StatefulWidget {
  LayoutsPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _LayoutsPageState createState() => _LayoutsPageState();
}

class _LayoutsPageState extends State<LayoutsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: Center(
          child: Container(
            child: Stack(
              children: <Widget>[
                Card(
                  margin: EdgeInsets.all(16),
                  elevation: 12,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                  color: Colors.white,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 36,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Color(0xFF213B6C), Color(0xFF0059A5)]),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.red[200],
                            blurRadius: 3,
                            offset: Offset(6, 6))
                      ],
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        FlutterLogo(size: 48),
                        SizedBox(width: 16),
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "Title of the Card",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                              Text("Some description")
                            ],
                          ),
                        ),
                        Icon(Icons.arrow_right)
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
