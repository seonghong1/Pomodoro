import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

enum ChangeType { add, remove }

class _MyWidgetState extends State<MyWidget> {
  int counter = 0;

  void setCounter(ChangeType type) {
    /**
     * setState함수를 사용하지 않으면 state는 변경이 되지만,
     * ui를 다시 그려주는 build함수가 실행되지 않는다.
     * 동적인 state의 변화는 setState함수 내부에 작성해준다
     */
    setState(() {
      if (type == ChangeType.add) {
        counter++;
      } else {
        counter--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Click Count'),
          Text('$counter'),
          IconButton(
              onPressed: () {
                setCounter(ChangeType.add);
              },
              icon: Icon(Icons.add)),
          IconButton(
              onPressed: () {
                setCounter(ChangeType.remove);
              },
              icon: Icon(Icons.remove))
        ],
      )),
    );
  }
}
