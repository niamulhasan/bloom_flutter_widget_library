import 'package:flutter/material.dart';

class ContinuousRectangleBorderPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path =
        ContinuousRectangleBorder(borderRadius: BorderRadius.circular(60))
            .getOuterPath(
                Rect.fromPoints(Offset(0, 0), Offset(size.width, size.height)));

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
