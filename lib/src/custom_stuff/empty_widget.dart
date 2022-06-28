import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class EmptyWidget extends StatelessWidget {
  final String lottieAsset;
  final String title;

  const EmptyWidget({
    Key? key,
    this.lottieAsset = "assets/lottie/no-data.json",
    this.title = "No data found. ",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        LottieBuilder.asset(
          lottieAsset,
          repeat: false,
          fit: BoxFit.contain,
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.6,
        ),
        Text(
          title.toUpperCase(),
          textScaleFactor: 1.5,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
