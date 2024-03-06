import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        /**
     * 
     * 
     * Scaffold
     * 앱의 레이아웃을 상단, 가운데, 하단으로 나눠주는 위젯
     *  padding, border, margin
     * Align Widget
     * alignment: Alignment.,
     * double.infinity
     * decoration: BoxDecoration()
     * 
     * 
     */
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text(
          'App Header',
          style: TextStyle(color: Colors.white),
        ),
      ),
      // Align : box 정렬을 위한 위젯
      body: Align(
        alignment: Alignment.center,
        child: Container(
          height: double.infinity,
          // double.infinity 부모 박스를 기준으로 100%
          width: double.infinity,
          // margin: EdgeInsets.all(20),
          margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black), color: Colors.black),
          child: Row(
            children: [Text('app test')],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(Icons.phone),
            Icon(Icons.message),
            Icon(Icons.contact_mail),
          ],
        ),
      ),
    ));
  }
}
