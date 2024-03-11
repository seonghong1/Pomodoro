import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import '../widgets/button-widget.dart';
import '../widgets/wallet-widget.dart';
import '../constants/dummy-datas.dart';
import '../constants/colors.dart';

void main() {
  runApp(const MyApp());
}

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
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.menu,
                      size: 40,
                      color: COLOR_WHITE,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'Hey Seonghong',
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
                height: 40,
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
                height: 60,
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
