import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'default_svg.dart';


class DefaultCachedNetworkImage extends StatelessWidget {
  const DefaultCachedNetworkImage(
      {Key? key, this.height, this.wedth, required this.imageURL, this.fit})
      : super(key: key);
  final double? height;
  final double? wedth;
  final String imageURL;
  final BoxFit? fit;
  @override
  Widget build(BuildContext context) {
    return Visibility(
      replacement:Padding(
        padding: EdgeInsets.all(15),
        child: DefaultSVG(imagePath: 'assets/icons/default_photo.svg'),
      ),
        visible: imageURL != '',
        child: CachedNetworkImage(
          imageUrl: imageURL,
          width: wedth,
          height: height,
          fit: fit,
          progressIndicatorBuilder: (context, url, progress) =>
              CircularProgressIndicator(
            value: progress.downloaded.toDouble(),
          ),
          errorWidget:(context, url, error)=>
          Padding(
              padding: EdgeInsets.all(15),
child: DefaultSVG(imagePath: 'assets/icons/default_photo.svg'),
          ),
        ));
  }
}
