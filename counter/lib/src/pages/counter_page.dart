import 'package:counter/src/pages/home_page.dart';
import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return CounterPageState();
  }
}

class CounterPageState extends State {

  int counter = 0;

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
              '$counter',
              style: this.tabsTextStyle,
            )
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        )),
        floatingActionButton: FloatingActionButton(onPressed: () {
          setState(() => {
          counter++
          });

        }, child: Icon(Icons.add),),);
  }



}
