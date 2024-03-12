import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final int minutes = 25;
  final int _seconds = 60;
  int _currentMinutes = 0;
  int _currentSeconds = 0;
  int _pomodorosCount = 0;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _currentMinutes = minutes;
  }

  void startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        // 00:00일때 초기화
        if (_currentMinutes == 0 && _currentSeconds == 0) {
          _currentMinutes = minutes;
          _currentSeconds = 0;
          _pomodorosCount++;
          _timer?.cancel();
          _timer = null;
        } else if (_currentMinutes != 0 && _currentSeconds == 0) {
          _currentSeconds = _seconds;
          _currentMinutes--;
          _currentSeconds--;
        } else {
          _currentSeconds--;
        }
      });
    });
  }

  void stopTimer() {
    if (_timer != null) {
      setState(() {
        _timer?.cancel();
        _timer = null;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        children: [
          Flexible(
            flex: 3,
            child: Container(
              alignment: Alignment.bottomCenter,
              child: Text(
                '$_currentMinutes : ${_currentSeconds.toString().length == 1 ? '0$_currentSeconds' : '$_currentSeconds'}',
                style: TextStyle(
                    color: Theme.of(context).cardColor,
                    fontSize: 89,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
          Flexible(
            flex: 4,
            child: Container(
              child: Center(
                child: IconButton(
                  iconSize: 80,
                  color: Theme.of(context).cardColor,
                  icon: Icon(_timer == null
                      ? Icons.play_circle_outline
                      : Icons.stop_circle_outlined),
                  onPressed: () {
                    if (_timer == null) {
                      startTimer();
                    } else {
                      stopTimer();
                    }
                  },
                ),
              ),
            ),
          ),
          Flexible(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(top: Radius.circular(30.0)),
                color: Theme.of(context).cardColor,
              ),
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Pomodoros',
                    style: TextStyle(
                      fontWeight:
                          Theme.of(context).textTheme.displayMedium?.fontWeight,
                      fontSize:
                          Theme.of(context).textTheme.displayMedium?.fontSize,
                      color: Theme.of(context).textTheme.displayMedium?.color,
                    ),
                  ),
                  Text(
                    '$_pomodorosCount',
                    style: TextStyle(
                      fontWeight:
                          Theme.of(context).textTheme.displayLarge?.fontWeight,
                      fontSize:
                          Theme.of(context).textTheme.displayLarge?.fontSize,
                      color: Theme.of(context).textTheme.displayLarge?.color,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
