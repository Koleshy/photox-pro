import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CachedImageX extends StatelessWidget {

  final String url;
  final BoxFit? fit;

  const CachedImageX({
    super.key,
    required this.url,
    this.fit = BoxFit.cover
  });

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: url,
      fit: fit,
      progressIndicatorBuilder: (context, url, downloadProgress) =>
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: CircularProgressIndicator(
            value: downloadProgress.progress,
            strokeWidth: 5
          ),
        ),
      errorWidget: (context, url, error) => const Icon(Icons.error)
    );
  }
}
