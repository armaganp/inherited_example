import 'package:flutter/material.dart';

class Iws extends StatefulWidget {
  final Widget root;
  const Iws({Key? key, required this.root}) : super(key: key);

  @override
  _IwsState createState() => _IwsState();
}

class _IwsState extends State<Iws> {
  int counter = 0;
  Color color = Colors.indigo;
  String label = 'pushed';
  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  void changeColor() {
    setState(() {
      color = Colors.amberAccent;
    });
  }

  void changeString() {
    setState(() {
      label = 'clicked';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Iw(
      root: widget.root,
      counter: counter,
      color: color,
      label: label,
      iwsState: this,
    );
  }
}

class Iw extends InheritedWidget {
  final int counter;
  final Color color;
  final String label;
  final _IwsState iwsState;

  const Iw(
      {Key? key,
      required this.color,
      required this.counter,
      required this.label,
      required Widget root,
      required this.iwsState})
      : super(key: key, child: root);

  static _IwsState of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<Iw>()!.iwsState;
  }

  @override
  bool updateShouldNotify(Iw oldWidget) {
    return (oldWidget.counter != counter);
  }
}
