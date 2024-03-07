import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// ignore_for_file: prefer_const_constructors
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

const Color COLOR_MAIN = Color(0xFF181818);
const Color COLOR_BLACK = Color(0xFF000000);
const Color COLOR_WHITE = Color(0xFFFFFFFF);
const Color COLOR_ORANGE = Color(0xFFF2B33A);
const Color COLOR_GREY = Color.fromARGB(255, 167, 167, 167);
const Color COLOR_LIGHT_GREY = Color(0xFF363B3B);

const DUMMY_DATA = [
  {
    'S_CURRENCY': 'EUR',
    'L_CURRENCY': "Euro",
    "MONEY": "931,232,000",
    "IMAGE": "euro.png"
  },
  {
    'S_CURRENCY': 'USD',
    'L_CURRENCY': "Dollar",
    "MONEY": "472,000",
    "IMAGE": "dollar.png"
  },
  {
    'S_CURRENCY': 'INR',
    'L_CURRENCY': "Rupee",
    "MONEY": "3,000,000",
    "IMAGE": "rupee.png"
  },
];

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    /*
        리턴해주는 위젯의 종류는 MaterialApp(구글 디자인 시스템, 권장되는 방식), 
        Cupertino(애플 디자인 시스템) 두가지로 나뉨

        앱의 화면들은 모두 Scaffold의 구조를 가져가야됨(appBar, body,bottomNavigationBar )



        - 색상 코드로 값을 지정할 경우 0xFF...


        /setting.json
        "dart.previewFlutterUiGuides": true, :: vscode 가이드라인 UI
        "editor.codeActionsOnSave": { 
          "source.fixAll": true    :: 저장시 const, 권장되는 문법으로 바꿔줌
        },
     */
    return MaterialApp(
      home: Scaffold(
        backgroundColor: COLOR_MAIN,
        /* body */
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(Icons.star),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'Hey Selena',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 28,
                              fontWeight: FontWeight.w800),
                        ),
                        Text(
                          'Welcome back',
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.8),
                              fontSize: 18),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                child: Text(
                  'Total Balance',
                  style: TextStyle(
                      color: Colors.white.withOpacity(0.8), fontSize: 22),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                '\$5 194 482',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 42,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  ButtonWidget('Transfer', COLOR_BLACK, COLOR_ORANGE),
                  SizedBox(
                    width: 15,
                  ),
                  ButtonWidget('Request', COLOR_WHITE, COLOR_BLACK)
                ],
              ),
              SizedBox(
                height: 100,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "Wallets",
                    style: TextStyle(
                        color: COLOR_WHITE,
                        fontSize: 35,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    'View All',
                    style: TextStyle(color: COLOR_GREY, fontSize: 18),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  for (int i = 0; DUMMY_DATA.length > i; i++)
                    WalletWidget(DUMMY_DATA[i], i)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class WalletWidget extends StatelessWidget {
  final _data;
  final _bgColor;
  final _itemColor;
  const WalletWidget(this._data, color, {super.key})
      : _bgColor = color % 2 == 0 ? COLOR_LIGHT_GREY : COLOR_WHITE,
        _itemColor = color % 2 == 0 ? COLOR_WHITE : COLOR_BLACK;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      decoration: BoxDecoration(
          color: _bgColor, borderRadius: BorderRadius.circular(8.0)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                _data['L_CURRENCY'],
                style: TextStyle(
                    color: _itemColor,
                    fontSize: 30,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    _data['MONEY'],
                    style: TextStyle(
                        color: _itemColor,
                        fontSize: 20,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    _data['S_CURRENCY'],
                    style: TextStyle(
                        color: _itemColor,
                        fontSize: 15,
                        fontWeight: FontWeight.w300),
                  )
                ],
              )
            ],
          ),
          Transform.translate(
            offset: Offset(8, 20),
            child: Transform.scale(
              scale: 1.8,
              child: Image.asset(
                _data['IMAGE'],
                width: 70,
                color: _itemColor,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ButtonWidget extends StatelessWidget {
  final text;
  final color;
  final backGroundColor;
  const ButtonWidget(this.text, this.color, this.backGroundColor, {super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: backGroundColor,
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      ),
      onPressed: () {},
      child: Text(
        text,
        style: TextStyle(
          color: color,
        ),
      ),
    );
  }
}
