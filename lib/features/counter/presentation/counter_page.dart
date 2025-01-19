import 'package:flutter/material.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Counter screen'),
          /*
          PlasmaBackground(),
          Positioned(
            top: 10.0.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                AnimatedCircles(),
                CounterValue(),
              ],
            ),
          ),
          Positioned(bottom: 8.0.h, child: CounterSlider()),
          */
        ],
      ),
    );
  }
}
