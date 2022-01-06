import 'package:aniba_app/iw.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen();

  @override
  State<HomeScreen> createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final p = Iw.of(context); //provider
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          title: Text('${p.counter}'),
          backgroundColor: p.color,
        ),
        body: Center(
          child: Column(
            children: [
              Text('you have ${p.label} ${p.counter} times'),
              OutlinedButton(
                onPressed: () {
                  p.incrementCounter();
                  if (p.counter == 5) {
                    p.changeColor();
                    p.changeString();
                  }
                },
                child: Text(
                  'ADD',
                  style: TextStyle(color: p.color),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
