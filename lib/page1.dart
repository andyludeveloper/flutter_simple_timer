import 'package:flutter/material.dart';
import 'dart:async';
import 'package:fluttertimerapp2/page2.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/provider.dart';
import 'counter.dart';

class Page1 extends StatefulWidget {
  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  var timer;

  @override
  Widget build(BuildContext context) {
    var counter = Provider.of<Counter>(context);
    counter.addListener((){
      debugPrint('${counter.count}');
      if(counter.count == 10.0){
        Fluttertoast.showToast(
            msg: "This is Center Short Toast",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0
        );
        timer.cancel();
      }
    });
    return Scaffold(
      body: Container(
        color: Colors.greenAccent,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Center(
                child: Text(
                  'Page1',
                  style: TextStyle(fontSize: 40.0),
                ),
              ),
              Center(
                child: Text(
                  'Counter: ${counter.count}',
                  style: TextStyle(fontSize: 40.0),
                ),
              ),
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
                        MaterialPageRoute(builder: (_) => Page2()),
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
