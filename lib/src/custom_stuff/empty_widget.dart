import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../utils_widget.dart';

class EmptyWidget extends StatelessWidget {
  final String lottieAsset;
  final String error;
  final void Function()? onPressed;

  const EmptyWidget({
    Key? key,
    this.lottieAsset = "assets/lottie/no-data.json",
    this.error = "No data found.",
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          error.toTitleCase(),
          textScaleFactor: 1.5,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: errorColor(context),
          ),
        ),
        LottieBuilder.asset(
          lottieAsset,
          repeat: false,
          fit: BoxFit.contain,
          width: double.infinity,
          height: Device.screenSize.height * 0.6,
        ),
        ElevatedButton.icon(
          label: const Text("Refresh Page"),
          onPressed: onPressed,
          icon: const Icon(Icons.refresh),
        ),
      ],
    );
  }
}
