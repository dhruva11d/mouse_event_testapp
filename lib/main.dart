// lib/main.dart

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: home(),
    );
  }
}


class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  String msg="Button not clikced";
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.limeAccent,Colors.transparent])),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(100, 200, 100, 200),
          child: Column(
            children: [
              ElevatedButton(
                key: Key('Button Test'),
                onPressed: (){
                  setState(() {
                    msg="Button clikced";
                  });
                },
                child: Text(msg),
              ),
            ],
          ),
        ),
      ) ,

    );

  }
}





