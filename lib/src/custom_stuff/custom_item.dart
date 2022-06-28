import 'package:flutter/material.dart';

import 'custom_container.dart';
import 'custom_image.dart';

class CustomItemCard extends StatelessWidget {
  final String? imageUrl;
  final String title;
  final String subTitle;
  final String trailing;
  final Widget? moreInfo;
  final Color hintColor;
  final Color boxColor;
  final int index;
  final void Function()? onTapCard;
  final void Function()? onTapTitle;
  final void Function()? onTapTrailing;

  const CustomItemCard(
      {Key? key,
      this.imageUrl,
      required this.title,
      required this.subTitle,
      this.moreInfo,
      required this.trailing,
      required this.hintColor,
      required this.boxColor,
      required this.index,
      this.onTapCard,
      this.onTapTitle,
      this.onTapTrailing})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return CustomContainer(
      color: boxColor,
      onTap: onTapCard,
      blurRadius: 2,
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    if (imageUrl != null)
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: CustomNetworkImage(
                          url: imageUrl!,
                          width: width / 6.5,
                          height: width / 7,
                          fit: BoxFit.contain,
                        ),
                      ),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.only(left: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 8.0),
                              child: GestureDetector(
                                onTap: onTapTitle,
                                child: Text(
                                  title,
                                  textScaleFactor: 1.3,
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                  softWrap: false,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Theme.of(context).primaryColor,
                                  ),
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  subTitle,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: onTapTrailing,
                                  child: Text(trailing),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                if (moreInfo != null) const SizedBox(height: 8),
                moreInfo ?? const SizedBox(height: 8),
              ],
            ),
          ),
          Container(
            width: 6,
            decoration: BoxDecoration(
              color: hintColor,
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
            ),
            height: 55,
            margin: const EdgeInsets.only(top: 10),
          )
        ],
      ),
    );
  }
}
