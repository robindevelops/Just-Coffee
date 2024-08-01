import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.network(
            "https://lottie.host/35beefc7-6652-4827-b4dc-97a26f0ccb85/iLEI20s4KJ.json",
            height: 300,
          ),
        ],
      ),
    );
  }
}
