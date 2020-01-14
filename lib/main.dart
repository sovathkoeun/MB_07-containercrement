
import 'package:counterincrement/Counter.dart';
import 'package:flutter/material.dart';


void main() => runApp(Demo());
class Demo extends StatefulWidget {
  @override
  _DemoState createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(  
          title: Text("Counter App"),
        ),
        body: Counter(),
      ),
    );
  }
}



