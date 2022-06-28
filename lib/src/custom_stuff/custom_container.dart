import 'package:flutter/material.dart';

import '../ui/context_theme_colors.dart';


class CustomContainer extends StatelessWidget {
  final Widget child;
  final String tooltip;
  final BoxBorder? border;
  final double? radius;
  final double? blurRadius;
  final double? offset;
  final double? height;
  final double? width;
  final Color? color;
  final Color? shadowColor;
  final Gradient? gradient;
  final AlignmentGeometry? alignment;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final void Function()? onTap;

  const CustomContainer({
    Key? key,
    required this.child,
    this.radius,
    this.blurRadius,
    this.offset,
    this.color,
    this.shadowColor,
    this.height,
    this.width,
    this.padding,
    this.gradient,
    this.border,
    this.margin,
    this.onTap,
    this.tooltip = "",
    this.alignment,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Tooltip(
        message: tooltip,
        child: Container(
          height: height,
          width: width,
          padding: padding,
          margin: margin,
          alignment: alignment,
          decoration: BoxDecoration(
            border: border,
            color: color ?? Theme.of(context).scaffoldBackgroundColor,
            borderRadius:
                BorderRadius.circular(((radius != null) ? radius : 8)!),
            gradient: gradient,
            boxShadow: [
              BoxShadow(
                color: shadowColor != null
                    ? shadowColor!
                    : onSurface(context).withOpacity(0.5),
                blurRadius: blurRadius != null ? blurRadius! : 5.0,
                offset: Offset(0, offset != null ? offset! : 0),
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius:
                BorderRadius.circular(((radius != null) ? radius : 8)!),
            child: child,
          ),
        ),
      ),
    );
  }
}
