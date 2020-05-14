import 'package:flutter/material.dart';
import 'package:fluttertimerapp2/mywidget3.dart';
import 'package:provider/provider.dart';
import 'counter.dart';

class MyWidget2 extends StatefulWidget {
  @override
  _MyWidget2State createState() => _MyWidget2State();
}

class _MyWidget2State extends State<MyWidget2> {
  var title = 'MyWidget2';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.lightBlue,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Center(child: Text(title, style: TextStyle(fontSize: 40.0, color: Colors.yellowAccent),)),
            Center(child: Text('Counter: ${Provider.of<Counter>(context).count}', style: TextStyle(fontSize: 40.0),)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                IconButton(icon: Icon(Icons.arrow_back, size: 40.0, color: Colors.white70,), onPressed: (){
                  Navigator.pop(context);
                },),
                IconButton(
                  icon: Icon(
                    Icons.skip_next,
                    size: 40,
                    color: Colors.white70,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => MyWidget3()),
                    );
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}