import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

// stless
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

        //       Center() 자식요소의 위젯 기준점을 정중앙으로함
        // <div>
        //     <div>자식</div>
        // </div>
        // 위와 유사한 개념

        // child 파라미터를 사용해 위젯 안에 위젯 삽입 가능
        //     home: Center(
        //   child: Container(width: 50, height: 50, color: Colors.blue),
        // ));
        /**
         * 
         * 여러 위젯을 가로배치
         * child 는 하나의 위젯만 존재할 수 있음.
         * 하나의 위젯 안에 다중으로 위젯이 필요하면 children 을 사용
         * 가로로 여러 위젯을 배치하기 위해서는 Row위젯을 활용
         * 
         * 세로 배치는 Column
         *  
         * row에서 mainAxis 가로축 (display와 유사)
         * rossAxis는 세로축
         * 
         * 
         * height를 적용시키지 못하는 위젯은 Container 위젯으로 한번 감싸서 해결
         * height, width, child정도만 필요하면 SizedBox를 활용(Container는 무거움)
         */
        home: Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(Icons.star),
          Icon(Icons.star),
          Icon(Icons.star),
        ],
      ),
    ));
  }
}
