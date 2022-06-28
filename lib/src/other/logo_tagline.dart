import 'package:flutter/material.dart';

Widget logoWithTagLine(context) {
  return DrawerHeader(
    child: Column(
      children: [
        Flexible(
          child: Image.asset(
            "assets/isa/launch_image.png",
            width: 220,
            height: 160,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('A Universal Platform for'),
            Text(
              'Indian Anesthesiologists',
              style: Theme.of(context).textTheme.headline6,
            ),
          ],
        ),
      ],
    ),
  );
}
