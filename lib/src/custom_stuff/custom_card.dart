import 'package:flutter/material.dart';

import 'custom_container.dart';

class CustomCard extends StatelessWidget {
  final int index;
  final Widget iconLeft;
  final Widget? iconRight;
  final Widget? subWidget;
  final String title;
  final String? subTitle;
  final Color? colorLeft;
  final Color? colorRight;
  final Color? colorCenter;
  final void Function()? onTap;
  final void Function()? onMoreTap;

  const CustomCard({
    Key? key,
    required this.index,
    required this.iconLeft,
    this.iconRight,
    this.subWidget,
    required this.title,
    this.subTitle,
    this.colorLeft,
    this.colorRight,
    this.colorCenter,
    this.onTap,
    this.onMoreTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 12, right: 12, bottom: 16),
      child: Row(
        children: [
          CustomContainer(
            blurRadius: 2,
            width: 80,
            height: 80,
            margin: const EdgeInsets.only(right: 12),
            padding: const EdgeInsets.all(1),
            color: colorLeft,
            child: iconLeft,
          ),
          Expanded(
            child: Stack(
              alignment: Alignment.centerRight,
              children: [
                CustomContainer(
                  color: colorCenter,
                  blurRadius: 2,
                  onTap: onTap,
                  width: MediaQuery.of(context).size.width,
                  height: 80,
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  margin: const EdgeInsets.only(right: 14),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                        maxLines: 2,
                        textScaleFactor: 1.2,
                      ),
                      if (subTitle != null)
                        const SizedBox(
                          height: 8,
                        ),
                      (subTitle != null)
                          ? Text(
                              subTitle ?? '',
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              maxLines: 1,
                              textAlign: TextAlign.start,
                            )
                          : subWidget ?? const SizedBox(),
                    ],
                  ),
                ),
                CustomContainer(
                  width: 30,
                  height: 30,
                  blurRadius: 2,
                  onTap: onMoreTap,
                  color: colorRight,
                  child: iconRight ??
                      const Icon(Icons.keyboard_arrow_right,
                          color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
