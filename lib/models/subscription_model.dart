import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class SubscriptionModel {
  String title;
  String balance;
  String date;
  IconData icon;
  Color color;
  
  SubscriptionModel(
    this.balance,
    this.title,
    this.date,
    this.icon,
    this.color,
  );
}

List<SubscriptionModel> subscription() {
  return [
    SubscriptionModel('\$12.00', 'Mailchimp','May 10, 11:25 am' ,LineIcons.mailchimp, const Color(0xFFC1C1DE)),
    SubscriptionModel('\$8.00', 'Hotjar','May 22, 09:00 am' ,LineIcons.hotjar, const Color(0xFFF0E0D1)),
    SubscriptionModel('\$24.00', 'Telegram','June 01, 04:37 pm' ,LineIcons.telegram, const Color(0xFFD1E6D6)),
    SubscriptionModel('\5.00', 'Waze','June 12, 02:324 pm' ,LineIcons.waze, const Color(0xFFFBDBA2)),
  ];
}
