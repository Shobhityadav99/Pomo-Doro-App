import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: PomoDoro(),
  ));
}

class PomoDoro extends StatefulWidget {
  @override
  _PomoDoroState createState() => _PomoDoroState();
}

class _PomoDoroState extends State<PomoDoro> {
  double percent = 0;
  static int timeInmin = 60;
  int timeInsec = timeInmin * 60;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
      ),
    );
  }
}
