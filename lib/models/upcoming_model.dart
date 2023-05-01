import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class UpcomingModel {
  String title;
  String balance;
  String date;
  IconData icon;
  
  UpcomingModel(
    this.balance,
    this.title,
    this.date,
    this.icon,
  );
}

List<UpcomingModel> upcoming() {
  return [
    UpcomingModel('\$12.00', 'Discord Nitro','2 Days Left' ,LineIcons.discord),
    UpcomingModel('\$8.00', 'Apple TV+','5 Days Left' ,LineIcons.apple),
    UpcomingModel('\$24.00', 'Amazon','8 Days Left' ,LineIcons.amazon),
    UpcomingModel('\$5.00', 'Facebook Ads','14 Days Left' ,LineIcons.facebook),
  ];
}
