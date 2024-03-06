import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

// stless
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    /**
     * 
     * 
     *   flexible
     *   요소의 너비를 %로 지정하고싶을땐 
     *   Flexible 위젯 사용
     *   총 10으로 나눠 차지할 양만큼 입력 flex: 4,
     * 
     *   Row위젯 내부의 Flexible 위젯의 flex수치값은 폭 이지만,
     *   Column위젯 내부 Flexible 위젯의 flex값은 높이이다.
     *   
     *   Expanded
     *   부모 요소의 남은 공간을 꽉 채울때 사용
     *   flex : 1 과 동일
     * 
     * 
     * 
     */
    return MaterialApp(
        home: Scaffold(
      body: Row(
        children: [
          Flexible(
              flex: 7,
              child: Container(
                color: Colors.green,
              )),
          Flexible(
              flex: 3,
              child: Container(
                color: Colors.blue,
              )),
          Expanded(
              child: Container(
            color: Colors.red,
          ))
        ],
      ),
    ));
  }
}
