import 'package:flutter/material.dart';

class IosStyleToast extends StatelessWidget {
  final TextStyle? style;
  final EdgeInsetsGeometry padding;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final String message;
  final Widget? child;
  final Widget? body;
  const IosStyleToast({
    Key? key,
    this.style,
    this.padding = const EdgeInsets.all(16),
    this.backgroundColor = Colors.black87,
    this.foregroundColor = Colors.white,
    this.message = "Succeed",
    this.child,
    this.body,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: body ??
          DefaultTextStyle(
            style: style ??
                Theme.of(context)
                    .textTheme
                    .bodyText2!
                    .copyWith(color: foregroundColor),
            child: Padding(
              padding: padding,
              child: Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    color: backgroundColor,
                    padding: const EdgeInsets.symmetric(
                      vertical: 8,
                      horizontal: 16,
                    ),
                    child: child ??
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Icon(
                              Icons.check,
                              color: foregroundColor,
                            ),
                            Text(message)
                          ],
                        ),
                  ),
                ),
              ),
            ),
          ),
    );
  }
}
