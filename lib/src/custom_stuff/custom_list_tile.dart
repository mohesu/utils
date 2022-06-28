import 'package:flutter/material.dart';

import '../ui/context_theme_colors.dart';


Widget settingOptionPattern(
    IconData icon, String title, void Function() onTap) {
  return ListTile(
    onTap: onTap,
    dense: true,
    leading: Icon(
      icon,
    ),
    title: Text(
      title,
    ),
    trailing: const Icon(
      Icons.keyboard_arrow_right,
    ),
  );
}

Widget customListTile(String leading, String title) {
  return ListTile(
    dense: true,
    leading: Text(
      leading,
    ),
    title: Text(
      title,
    ),
  );
}

class CustomListTile extends StatelessWidget {
  final Widget? leading;
  final Widget? title;
  final Widget? subtitle;
  final Widget? trailing;
  final bool isThreeLine;
  final bool? dense;
  final VisualDensity? visualDensity;
  final ShapeBorder? shape;
  final ListTileStyle? style;
  final Color? selectedColor;
  final Color? iconColor;
  final Color? textColor;
  final EdgeInsetsGeometry? contentPadding;
  final bool enabled;
  final void Function()? onTap;
  final void Function()? onLongPress;
  final MouseCursor? mouseCursor;
  final bool selected;
  final Color? focusColor;
  final Color? hoverColor;
  final FocusNode? focusNode;
  final bool autofocus;
  final Color? tileColor;
  final Color? selectedTileColor;
  final bool? enableFeedback;
  final double? horizontalTitleGap;
  final double? minVerticalPadding;
  final double? minLeadingWidth;
  const CustomListTile({
    Key? key,
    this.leading,
    this.title,
    this.subtitle,
    this.trailing,
    this.dense,
    this.visualDensity,
    this.shape,
    this.style,
    this.selectedColor,
    this.iconColor,
    this.textColor,
    this.contentPadding,
    this.onTap,
    this.onLongPress,
    this.mouseCursor,
    this.focusColor,
    this.hoverColor,
    this.focusNode,
    this.tileColor,
    this.selectedTileColor,
    this.enableFeedback,
    this.horizontalTitleGap,
    this.minVerticalPadding,
    this.minLeadingWidth,
    this.isThreeLine = false,
    this.enabled = true,
    this.selected = false,
    this.autofocus = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: contentPadding ?? EdgeInsets.zero,
      minVerticalPadding: minVerticalPadding ?? 0,
      dense: dense ?? true,
      minLeadingWidth: minLeadingWidth ?? 0,
      horizontalTitleGap: horizontalTitleGap ?? 0,
      textColor: textColor,
      style: style,
      subtitle: subtitle,
      title: title,
      leading: leading,
      onTap: onTap,
      trailing: trailing,
      selectedColor: selectedColor,
      iconColor: iconColor,
      autofocus: autofocus,
      enabled: enabled,
      enableFeedback: enableFeedback,
      focusColor: focusColor,
      focusNode: focusNode,
      hoverColor: hoverColor,
      isThreeLine: isThreeLine,
      key: key,
      mouseCursor: mouseCursor,
      onLongPress: onLongPress,
      selected: selected,
      selectedTileColor: selectedTileColor,
      shape: shape,
      tileColor: tileColor,
      visualDensity: visualDensity,
    );
  }
}

class ListTileAmazon extends StatelessWidget {
  final Widget leading;
  final Widget title;
  final void Function()? onTap;
  const ListTileAmazon({
    Key? key,
    required this.leading,
    required this.title,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: dividerColor(context),
            width: 1,
          ),
        ),
      ),
      child: Row(
        children: [
          Container(
            color: primaryContainer(context).withOpacity(0.5),
            width: MediaQuery.of(context).size.width * 0.25,
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
            alignment: Alignment.centerLeft,
            child: leading,
          ),
          Expanded(
            child: InkWell(
              onTap: onTap,
              child: Container(
                alignment: Alignment.centerLeft,
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                child: title,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
