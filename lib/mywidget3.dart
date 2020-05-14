import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'counter.dart';

class MyWidget3 extends StatefulWidget {

  @override
  _MyWidget3State createState() => _MyWidget3State();
}

class _MyWidget3State extends State<MyWidget3> {
  var title = 'MyWidget3';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Colors.deepPurpleAccent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Center(child: Text(title, style: TextStyle(fontSize: 40.0, color: Colors.yellowAccent),)),
              Center(child: Text('Counter: ${Provider.of<Counter>(context).count}', style: TextStyle(fontSize: 40.0),),),
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
