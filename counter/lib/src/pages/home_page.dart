import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  int counter = 0;

  final tabsTextStyle = new TextStyle(fontSize: 25.0);

  final counterTextStyle = new TextStyle(fontSize: 20.0);

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
              this.counter.toString(),
              style: this.counterTextStyle,
            )
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        )),
        floatingActionButton: FloatingActionButton(onPressed: () => this.counter++, child: Icon(Icons.add),),);
  }

}
