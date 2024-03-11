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
  /**
   * 
   * build매서드가 호출되기 전에 실행
   * 
   */
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  /**
   * 
   * 위젯이 unMounted되기 전에 호출
   * 
   */
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          textTheme: TextTheme(titleLarge: TextStyle(color: Colors.red))),
      home: Scaffold(
        body: Column(
          children: [LargeText()],
        ),
      ),
    );
  }
}

class LargeText extends StatefulWidget {
  const LargeText({
    super.key,
  });

  @override
  State<LargeText> createState() => _LargeTextState();
}

class _LargeTextState extends State<LargeText> {
  @override
  /**
   * 
   * context부모 요소의 widget요소에 접근할 수 있음
   * 
   */
  Widget build(BuildContext context) {
    return Text(
      'text',
      style: TextStyle(color: Theme.of(context).textTheme.titleLarge!.color),
    );
  }
}
