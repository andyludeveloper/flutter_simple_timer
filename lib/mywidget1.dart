import 'package:flutter/material.dart';
import 'dart:async';
import 'package:fluttertimerapp2/mywidget2.dart';
import 'package:provider/provider.dart';
import 'counter.dart';

class MyWidget1 extends StatefulWidget {
  @override
  _MyWidget1State createState() => _MyWidget1State();
}

class _MyWidget1State extends State<MyWidget1> {
  var title = 'MyWidget1';
  var timer;

  @override
  Widget build(BuildContext context) {
    var counter = Provider.of<Counter>(context);
    return Scaffold(
      body: Container(
        color: Colors.greenAccent,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Center(child: Text(title, style: TextStyle(fontSize: 40.0))),
              Center(child: Text('Counter: ${counter.count}', style: TextStyle(fontSize: 40.0)),),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.timer, size: 40.0, color: Colors.white70),
                    onPressed: () {
                      debugPrint('Start Timer');
                      timer = Timer.periodic(Duration(seconds: 1), (_) {
                        setState(() {
                          Provider.of<Counter>(context, listen: false).addCount();
                        });
                      });
                    },
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.skip_next,
                      size: 40,
                      color: Colors.white70,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => MyWidget2()),
                      );
                    },
                  ),
                ],
              )
            ]),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    if(timer!=null){
      debugPrint('cancel timer');
      timer.cancel();
    }
  }
}
