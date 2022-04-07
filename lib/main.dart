import 'package:demo_provider/pages/home_page.dart';
import 'package:demo_provider/provider/timer_info.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider(
        create: (context) => TimerInfo(),
        child: HomePage(),
      ),
    );
  }
}
