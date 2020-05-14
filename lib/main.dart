import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'counter.dart';
import 'mywidget1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => Counter(),
      child: MaterialApp(
          title: 'Flutter Timer Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: MyWidget1(),
      ),
    );
  }
}
