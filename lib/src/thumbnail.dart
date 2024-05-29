import 'package:flutter/material.dart';
import 'package:photox_pro/src/cached_image.dart';
import 'package:photox_pro/src/item.dart';

class PhotoxThumbnail extends StatelessWidget {
  const PhotoxThumbnail({
    Key? key,
    required this.item,
    required this.onTap,
    this.thumbnailMargin,
    this.thumbnailPadding
  }) : super(key: key);

  final PhotoXItem item;
  final GestureTapCallback onTap;
  final EdgeInsetsGeometry? thumbnailMargin;
  final EdgeInsetsGeometry? thumbnailPadding;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      margin: thumbnailMargin,
      padding: thumbnailPadding,
      child: GestureDetector(
        onTap: onTap,
        child: Hero(
          tag: item.id,
          child: item.isAsset
              ? Image.asset(item.resource)
              : CachedImage(url: item.resource),
        ),
      ),
    );
  }
}
