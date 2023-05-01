import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class AllSubscriptionModel {
  String title;
  String balance;
  String details;
  String date;
  String cardNumber;
  IconData icon;
  Color color;

  AllSubscriptionModel(
    this.balance,
    this.title,
    this.cardNumber,
    this.details,
    this.date,
    this.icon,
    this.color,
  );
}

List<AllSubscriptionModel> allSubscription() {
  return [
    AllSubscriptionModel('\5.00', 'Adobe', '8695', 'Lite', '1 Year',
        LineIcons.adobe, const Color(0xFFFFC6C2)),
    AllSubscriptionModel('\5.00', 'Waze', '2785', 'Premium+', '1 Year',
        LineIcons.waze, const Color(0xFFFBDBA2)),
    AllSubscriptionModel('\$12.00', 'Mailchimp', '2785', 'Premium', '2 Month',
        LineIcons.mailchimp, const Color(0xFFC1C1DE)),
    AllSubscriptionModel('\$8.00', 'Hotjar', '8695', 'Lite', '1 Month',
        LineIcons.hotjar, const Color(0xFFF0E0D1)),
    AllSubscriptionModel('\$24.00', 'Telegram', '4250', 'Basic', '3 Month',
        LineIcons.telegram, const Color(0xFFD1E6D6)),
    AllSubscriptionModel('\5.00', 'Buy Large', '4250', 'Premium', '1 Year',
        LineIcons.buyNLarge, const Color(0xFFC3E0DD)),
    AllSubscriptionModel('\5.00', 'Envira', '2785', 'Basic', '1 Year',
        LineIcons.enviraGallery, const Color(0xFFA1A4D9)),
    AllSubscriptionModel('\5.00', 'Patreon', '4250', 'Premium', '1 Year',
        LineIcons.patreon, const Color(0xFF91CBCA)),
  ];
}
