import 'dart:async';
import 'package:demo_provider/provider/timer_info.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    Timer.periodic(Duration(seconds: 1), (t) {
      var timerInfo = Provider.of<TimerInfo>(context, listen: false);
      timerInfo.updateRemainingTime();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print("====== Provider Solved ======");
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/stopwatch.png',
            ),
            SizedBox(
              height: 10,
            ),
            Consumer<TimerInfo>(
              builder: (context, data, child) {
                return Text(
                  data.getRemainingTime().toString(),
                  style: TextStyle(fontSize: 80),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
