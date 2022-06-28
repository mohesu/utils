import 'package:flutter/material.dart';

class CustomDividerText extends StatelessWidget {
  final Widget child;
  const CustomDividerText({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Container(
            margin: const EdgeInsets.only(left: 10.0, right: 20.0),
            child: Divider(
              color: Theme.of(context).dividerColor,
              height: 36,
            ),
          ),
        ),
        child,
        Expanded(
          child: Container(
            margin: const EdgeInsets.only(left: 20.0, right: 10.0),
            child: Divider(
              color: Theme.of(context).dividerColor,
              height: 36,
            ),
          ),
        ),
      ],
    );
  }
}
