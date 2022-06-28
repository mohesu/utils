import 'dart:io';

import 'package:flutter/material.dart';

class CustomNetworkImage extends StatelessWidget {
  final String url;
  final bool isProfile;
  final double scale;
  final Widget Function(BuildContext, Widget, int?, bool)? frameBuilder;
  final Widget Function(BuildContext, Widget, ImageChunkEvent?)? loadingBuilder;
  final Widget Function(BuildContext, Object, StackTrace?)? errorBuilder;
  final String? semanticLabel;
  final bool excludeFromSemantics;
  final double? width;
  final double? height;
  final Color? color;
  final Animation<double>? opacity;
  final BlendMode? colorBlendMode;
  final BoxFit? fit;
  final AlignmentGeometry alignment;
  final ImageRepeat repeat;
  final Rect? centerSlice;
  final bool matchTextDirection;
  final bool gapLessPlayback;
  final FilterQuality filterQuality;
  final bool isAntiAlias;
  final Map<String, String>? headers;
  final int? cacheWidth;
  final int? cacheHeight;

  const CustomNetworkImage({
    Key? key,
    required this.url,
    this.isProfile = false,
    this.frameBuilder,
    this.loadingBuilder,
    this.errorBuilder,
    this.semanticLabel,
    this.width,
    this.height,
    this.color,
    this.opacity,
    this.colorBlendMode,
    this.fit,
    this.centerSlice,
    this.headers,
    this.cacheWidth,
    this.cacheHeight,
    this.scale = 1.0,
    this.excludeFromSemantics = false,
    this.matchTextDirection = false,
    this.gapLessPlayback = false,
    this.isAntiAlias = false,
    this.alignment = Alignment.center,
    this.repeat = ImageRepeat.noRepeat,
    this.filterQuality = FilterQuality.low,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(
      url,
      height: height,
      width: width,
      alignment: alignment,
      fit: fit,
      cacheHeight: cacheHeight,
      cacheWidth: cacheHeight,
      centerSlice: centerSlice,
      color: color,
      colorBlendMode: colorBlendMode,
      excludeFromSemantics: excludeFromSemantics,
      filterQuality: filterQuality,
      frameBuilder: frameBuilder,
      gaplessPlayback: gapLessPlayback,
      headers: headers,
      isAntiAlias: isAntiAlias,
      key: key,
      loadingBuilder: loadingBuilder ??
          (BuildContext context, Widget child,
              ImageChunkEvent? loadingProgress) {
            if (loadingProgress == null) return child;
            return Container(
              height: height,
              width: width,
              color: Colors.grey,
              alignment: Alignment.center,
              child: CircularProgressIndicator(
                value: loadingProgress.expectedTotalBytes != null
                    ? loadingProgress.cumulativeBytesLoaded /
                        loadingProgress.expectedTotalBytes!
                    : null,
              ),
            );
          },
      errorBuilder: errorBuilder ??
          (BuildContext context, Object exception, StackTrace? stackTrace) {
            if (exception.runtimeType == SocketException) {
              return const Icon(Icons.hide_image);
            }
            return Icon(
              Icons.public,
              size: width,
              color: Theme.of(context).dividerColor.withOpacity(0.34),
            );
          },
      matchTextDirection: matchTextDirection,
      opacity: opacity,
      repeat: repeat,
      scale: scale,
      semanticLabel: semanticLabel,
    );
  }
}
