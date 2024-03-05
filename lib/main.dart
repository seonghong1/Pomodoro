import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// stless
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        /* 01. 텍스트 widget */
        // home: Text('test')
        /* 02. 아이콘 widget */
        // home: Icon(Icons.star));
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
        // home: Image.asset('IMG_7374.jpeg')

        /*
         박스 위젯 
         Container or SizedBox 위젯 사용
         width, height에 들어가는 number의 단위는 px이 아니라 "LP"라는 단위임

         아래와같이 50은 50%만큼 영역의 차지를 의미, 부모요소에 의해 결정
         */
        // home: Container(width: 50, height: 50, color: Colors.red)
        // home:SizedBox()

        /*
    Center() 자식요소의 위젯 기준점을 정중앙으로함
    <div> 
        <div>자식</div>
    </div>
    위와 유사한 개념
      */
        home: Center(
      child: Container(width: 50, height: 50, color: Colors.red),
    ));
  }
}
