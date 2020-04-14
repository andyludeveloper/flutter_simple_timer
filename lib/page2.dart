import 'package:flutter/material.dart';
import 'package:fluttertimerapp2/page3.dart';
import 'package:provider/provider.dart';
import 'counter.dart';

class Page2 extends StatefulWidget {
  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  
  @override
  Widget build(BuildContext context) {
  var counter = Provider.of<Counter>(context);
    return Scaffold(
      body: Container(
        color: Colors.lightBlue,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Center(child: Text('Page2', style: TextStyle(fontSize: 40.0, color: Colors.yellowAccent),)),
            Center(
              child: Text(
                'Counter: ${counter.count}',
                style: TextStyle(fontSize: 40.0),
              ),
            ),
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
                      MaterialPageRoute(builder: (_) => Page3()),
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