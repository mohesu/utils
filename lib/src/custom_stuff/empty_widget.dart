import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../utils_widget.dart';

class EmptyWidget extends StatelessWidget {
  final String lottieAsset;
  final String title;
  final Widget? titleWidget;
  final Widget? image;
  final Widget? button;
  final void Function()? onPressed;

  const EmptyWidget({
    Key? key,
    this.lottieAsset = "assets/lottie/no-data.json",
    this.title = "No data found.",
    this.titleWidget,
    this.onPressed,
    this.button,
    this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        titleWidget ??
            Text(
              title.toTitleCase(),
              textScaleFactor: 1.5,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: context.errorColor,
              ),
            ),
        image ??
            LottieBuilder.asset(
              lottieAsset,
              repeat: false,
              fit: BoxFit.contain,
              width: double.infinity,
              height: Device.screenSize.height * 0.6,
            ),
        button ??
            ElevatedButton.icon(
              label: const Text("Refresh Page"),
              onPressed: onPressed,
              icon: const Icon(Icons.refresh),
            ),
      ],
    );
  }
}
