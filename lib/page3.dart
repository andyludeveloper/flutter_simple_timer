import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'counter.dart';

class Page3 extends StatefulWidget {
  @override
  _Page3State createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Colors.lightBlue,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Center(
                  child: Text(
                'Page2',
                style: TextStyle(fontSize: 40.0, color: Colors.yellowAccent),
              )),
              Center(
                child: Text(
                  'Counter: ${Provider.of<Counter>(context, listen: false).count}',
                  style: TextStyle(fontSize: 40.0),
                ),
              ),
              IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  size: 40.0,
                  color: Colors.white70,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              )
            ],
          ),
        ),
    );
  }

  @override
  void initState() {
    super.initState();
  }
}
