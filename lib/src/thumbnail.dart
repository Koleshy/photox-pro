import 'package:flutter/material.dart';
import 'package:photox_pro/src/cached_image.dart';
import 'package:photox_pro/src/item.dart';

class PhotoxThumbnail extends StatelessWidget {

  const PhotoxThumbnail({
    Key? key,
    required this.item,
    required this.onTap,
    this.thumbnailMargin,
    this.thumbnailPadding,
    this.placeholder,
    this.errorImage
  }) : super(key: key);

  final PhotoXItem item;
  final GestureTapCallback onTap;
  final EdgeInsetsGeometry? thumbnailMargin;
  final EdgeInsetsGeometry? thumbnailPadding;
  final Widget Function(BuildContext, String)? placeholder;
  final Widget Function(BuildContext, String, Object)? errorImage;

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
          child: ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: item.isAsset
                ? Image.asset(item.resource, fit: BoxFit.cover)
                : CachedImageX(
                  url: item.resource,
                  placeholder: placeholder,
                  errorImage: errorImage,
                ),
          ),
        ),
      ),
    );
  }

}
