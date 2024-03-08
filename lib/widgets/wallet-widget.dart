import 'package:flutter/material.dart';
import '../constants/colors.dart';

class WalletWidget extends StatelessWidget {
  final Map<String, String> _data;
  final Color _bgColor, _itemColor;
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
                _data['L_CURRENCY']!,
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
                    _data['MONEY']!,
                    style: TextStyle(
                        color: _itemColor,
                        fontSize: 20,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    _data['S_CURRENCY']!,
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
                _data['IMAGE']!,
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
