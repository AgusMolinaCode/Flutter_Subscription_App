import 'package:flutter/material.dart';
import 'package:subcription_30_04/pages/home_page.dart';
import 'package:subcription_30_04/theme/colors.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Subscription',
      home: const Scaffold(
        body: HomePage(),
      ),
    
    );
  }
}