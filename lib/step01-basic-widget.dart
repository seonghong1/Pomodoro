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
    /*
        MaterialApp
        Material 테마가 적용된 ui, widget, style등을 활용가능함
        Cupertino
        아이폰 스타일 테마
        커스텀 디자인으로 할려고 하면 MaterialApp사용
     */
    return MaterialApp(
        home: Column(children: [
      /* 01. 텍스트 widget */
      Text('test'),

      /* 02. 아이콘 widget */
      Icon(Icons.star),

      /*
          03. 이미지 widget 
          Image.asset('경로') 
          이미지 저장은 root에 asset폴더에 저장해야됨
          이미지 등록 -> 사용 순서로 해줘야됨
          이미지등록 pubspec.yaml (앱 만들때 필요한 자료들이 정리되어있음)
          flutter:
            assets:
              - assets/
      */
      Image.asset('IMG_7374.jpeg'),

      /*
         박스 위젯 
         Container or SizedBox 위젯 사용
         width, height에 들어가는 number의 단위는 px이 아니라 "LP"라는 단위임

         아래와같이 50은 50%만큼 영역의 차지를 의미, 부모요소에 의해 결정

          height를 적용시키지 못하는 위젯은 Container 위젯으로 한번 감싸서 해결
           height, width, child정도만 필요하면 SizedBox를 활용(Container는 무거움)
      */
      Container(width: 50, height: 50, color: Colors.red),
      SizedBox(),
    ]));
  }
}
