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
     * 
     * Custom Widget
     * 
     * 레이아웃을 구성하는 코드가 길어질때 재사용 가능한 형태로 전환,
     * stless + tab을 입력하면 class가 생성되고 class명을 용도에 알맞게 작영,
     * 해당 class가 리턴해줄 레이아웃 코드를 return 영역에 정의하면 됨
     * 
     * 
     * 
     * 변수, 함수로도 해당 동작을 동일하게 구현 가능
     * 
     * 
     * Custom Widget내부 데이터들이 동적으로 변해야된다면
     * class를 활용(성능이슈)
     * 
     * 
     * ListView : 스크롤이 필요한 요소들일때 사용하는 Widget
     * - 스크롤바 사용 가능
     * - 스크롤 위치 감지
     * - 메모리 절약
     * 
     * 
     * 
     */
    return MaterialApp(
        home: Scaffold(
            body: Container(
      height: 200,
      color: Colors.blue,
      child: ListView(
        children: [
          Text('1'),
          Text('1'),
          Text('1'),
          Text('1'),
          Text('1'),
          Text('1'),
          Text('1'),
          Text('1'),
          Text('1'),
          Text('1'),
          Text('1'),
          Text('1'),
          Text('1'),
          Text('1'),
          Text('1'),
          Text('1')
        ],
      ),
    )));
  }
}

/* 변수로 Custom Widget 구현 */
Widget textWidget =
    Column(children: [Text('1'), Text('2'), Text('3'), Text('4')]);

/* 함수로 Custom Widget 구현 */
Widget funcTextWidget(int number) {
  return Column(children: [
    Text('$number'),
    Text('$number'),
    Text('$number'),
    Text('$number')
  ]);
}

/* Custom Widget */
class LongTextWidget extends StatelessWidget {
  const LongTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Text('1'), Text('2'), Text('3'), Text('4')],
    );
  }
}
