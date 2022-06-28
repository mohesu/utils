import 'package:flutter/material.dart';

import '../ui/context_theme_colors.dart';


///
/// Create a circle button with an icon.
///
/// The [icon] argument must not be null.
///
class CircleButton extends StatelessWidget {
  const CircleButton({
    Key? key,
    required this.icon,
    this.padding = const EdgeInsets.all(8.0),
    this.color,
    this.onPressed,
    this.splashColor,
  }) : super(key: key);

  /// The [Icon] contained ny the circle button.
  final Icon icon;

  /// Empty space to inscribe inside the circle button. The [icon] is
  /// placed inside this padding.
  final EdgeInsetsGeometry padding;

  /// The color to fill in the background of the circle button.
  ///
  /// The [color] is drawn under the [icon].
  final Color? color;

  /// The callback that is called when the button is tapped or otherwise activated.
  ///
  /// If this callback is null, then the button will be disabled.
  final void Function()? onPressed;

  /// The splash color of the button's [InkWell].
  ///
  /// The ink splash indicates that the button has been touched. It
  /// appears on top of the button's child and spreads in an expanding
  /// circle beginning where the touch occurred.
  ///
  /// The default splash color is the current theme's splash color,
  /// [ThemeData.splashColor].
  final Color? splashColor;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return ClipOval(
      child: Material(
        type: MaterialType.button,
        color: color ?? theme.toggleableActiveColor,
        child: InkWell(
          splashColor: splashColor ?? theme.splashColor,
          hoverColor: secondaryHeaderColor(context),
          onTap: onPressed,
          child: Padding(
            padding: padding,
            child: icon,
          ),
        ),
      ),
    );
  }
}
