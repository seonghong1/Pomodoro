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
    /**
     * 
     * 텍스트 스타일
     * Text("tyext", TextStyle(.....))
     * 
     * 버튼 위젯
     * TextButton()
     * IconButton()
     * ElevatedButton()
     * 
     * 버튼 위젯에는 2가지 이자가 필수로 존재해야됨.
     * TextButton(onPressed: () {}, child: 위젯)
     * IconButton(onPressed: () {}, icon:Icon(Icons. ...))
     * 
     * 
     * appBar 위젯에서 자주 사용되는 프로퍼티
     * 
     * leading : AppBar의 맨 왼쪽에 위치하는 아이콘
     * actions : AppBar의 우측에 위치할 아이콘들 리스트
     * 
     * 
     * 
     */
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('title'),
              leading: Icon(Icons.settings),
              actions: [
                Icon(Icons.settings),
                Icon(Icons.settings),
                Icon(Icons.settings),
              ],
            ),
            body: SizedBox(
              child: Column(
                children: [
                  Text(
                    'test',
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.w900),
                  ),
                  Icon(
                    Icons.phone,
                    color: Colors.red,
                  ),
                  TextButton(
                    onPressed: () {
                      print('click !');
                    },
                    child: Text('button name'),
                    style: ButtonStyle(),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        print('click !');
                      },
                      child: Text('button name')),
                  IconButton(onPressed: () {}, icon: Icon(Icons.star))
                ],
              ),
            )));
  }
}
