import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return CounterPageState();
  }
}

class CounterPageState extends State {
  int _counter = 0;

  final tabsTextStyle = new TextStyle(fontSize: 25.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App'),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        children: <Widget>[
          Text(
            'Taps:',
            style: this.tabsTextStyle,
          ),
          Text(
            '$_counter',
            style: this.tabsTextStyle,
          )
        ],
        mainAxisAlignment: MainAxisAlignment.center,
      )),
      floatingActionButton: _createButtons(),
    );
  }

  Widget _createButtons() {
    return Row(mainAxisAlignment: MainAxisAlignment.end, children: [
      SizedBox(width: 30.0),
      FloatingActionButton(
          child: Icon(Icons.exposure_zero), onPressed: _resetCounter),
      Expanded(child: SizedBox()),
      FloatingActionButton(
          child: Icon(Icons.remove), onPressed: _decrementCounter),
      SizedBox(width: 5.0),
      FloatingActionButton(child: Icon(Icons.add), onPressed: _incrementCounter),
    ]);
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }
}
