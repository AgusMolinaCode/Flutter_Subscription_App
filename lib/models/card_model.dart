import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class CardModel {
  String balance;
  String date;
  IconData icon;
  Color color;

  CardModel(
    this.balance,
    this.date,
    this.icon,
    this.color,
  );
}

List<CardModel> cards() {
  return [
    CardModel('\$543.21', '08/29', LineIcons.visaCreditCard, Color(0xFF769ECB)),
    CardModel('\$2,345.67', '07/31', LineIcons.applePayCreditCard, Color(0xFFEF7C7A)),
    CardModel('\$1,490.00', '06/28', LineIcons.mastercardCreditCard, Color(0xFFF3D67F)),
  ];
}
