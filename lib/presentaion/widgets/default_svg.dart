import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DefaultSVG extends StatelessWidget {
  const DefaultSVG({
    Key? key,
    this.height,
    this.wedth,
    required this.imagePath,
     this.fit =BoxFit.contain,
    this.color,
     this.alignment =Alignment.center,
  }) : super(key: key);
  final double? height;
  final double? wedth;
  final String imagePath;
  final BoxFit fit;
  final Color? color;
  final AlignmentGeometry alignment;
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
        imagePath,
      width: wedth,
      height: height,
      alignment: alignment,
      fit: fit,
      color: color,

    );
  }
}
