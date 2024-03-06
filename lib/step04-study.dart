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
     * 레이아웃 개발 꿀팁
     * 
     * 1. 요소별로 위젯을 나누는법을 먼저 눈으로 파악하기
     * 
     * 2. 바깥부터 하나씩 위젯 개발하기
     * 
     * 
     * 
     */
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(Icons.map),
                Text('금호동3가',
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                    )),
                Icon(
                  Icons.keyboard_arrow_down,
                  size: 28,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.search),
                SizedBox(
                  width: 20,
                ),
                Icon(Icons.menu),
                SizedBox(
                  width: 20,
                ),
                Icon(Icons.notifications_none)
              ],
            )
          ],
        ),
      ),
      body: Align(
          alignment: Alignment.topCenter,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset('flutter_study_assets01.jpeg',
                          width: 100, height: 100, fit: BoxFit.fill),
                    ),
                    Expanded(
                        child: Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '스타벅스 기프티콘 / 부드러운 디저트 세트',
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                          Text(
                            '성동구 행당동 - 끌올 10분전',
                          ),
                          Text('10,000원'),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [Icon(Icons.favorite_border), Text('4')],
                          )
                        ],
                      ),
                    ))
                  ],
                ),
              ),
            ],
          )),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(
              Icons.person,
              size: 40,
            ),
            Icon(
              Icons.chat_bubble,
              size: 40,
            ),
            Icon(
              Icons.more_horiz,
              size: 40,
            ),
          ],
        ),
      ),
    ));
  }
}
