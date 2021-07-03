import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

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
  static int timeInmin = 25;
  int timeInsec = timeInmin * 60;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xff1542bf), Color(0xff51a8ff)],
                begin: FractionalOffset(0.5, 1)),
          ),
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 25.0),
                child: Text(
                  'Pomodoro Clock',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                  ),
                ),
              ),
              Expanded(
                child: CircularPercentIndicator(
                  percent: percent,
                  animation: true,
                  animateFromLastPercent: true,
                  radius: 250.0,
                  lineWidth: 20.0,
                  progressColor: Colors.white,
                  center: Text(
                    "$timeInmin",
                    style: TextStyle(color: Colors.white, fontSize: 80.0),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
