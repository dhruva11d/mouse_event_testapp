import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool buttonClicked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button Click Demo'),
      ),
      body: Center(
        child: ElevatedButton(
          key: ValueKey('myButton'),
          onPressed: () {
            setState(() {
              buttonClicked = true;
            });
          },
          child: Text('Click Me'),
        ),
      ),
    );
  }
}
