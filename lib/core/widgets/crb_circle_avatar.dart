import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../config/continous_rectangle_border_path.dart';
import '../config/helper_constants.dart';

class CrbCircleAvatar extends StatelessWidget {
  final double radius;
  final ImageProvider? image;
  final Color? backgroundColor;
  final String? altImage;
  const CrbCircleAvatar(
    {
    Key? key,
    this.radius = 40.0,
    this.image,
    this.backgroundColor,
    this.altImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (image != null) {
      return Container(
        height: radius * 2,
        width: radius * 2,
        // ignore: sort_child_properties_last
        child: ClipPath(
          clipper: ContinuousRectangleBorderPath(),
          child: FadeInImage(
            fit: BoxFit.cover,
            placeholder: MemoryImage(kTransparentImage),
            image: image!,
            imageErrorBuilder: (context, exception, stackTrace) =>
                Image.network(
              altImage!,
              fit: BoxFit.cover,
            ),
          ),
        ),
        decoration: ShapeDecoration(
          color: backgroundColor ?? Theme.of(context).dialogBackgroundColor,
          shape: ContinuousRectangleBorder(
            borderRadius: BorderRadius.circular(60.0),
          ),
        ),
      );
    } else {
      return Container(
        height: radius * 2,
        width: radius * 2,
        decoration: ShapeDecoration(
          color: backgroundColor ?? Theme.of(context).dialogBackgroundColor,
          shape: ContinuousRectangleBorder(
            borderRadius: BorderRadius.circular(60.0),
          ),
        ),
      );
    }
  }

  static Widget shimmer({required double radius, Color? backgroundColor}) =>
      CrbCircleAvaterShimmer(
        radius: radius,
        backgroundColor: backgroundColor,
      );
}

class CrbCircleAvaterShimmer extends StatelessWidget {
  final double radius;
  final Color? backgroundColor;
  const CrbCircleAvaterShimmer({
    Key? key,
    required this.radius,
    this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: ContinuousRectangleBorderPath(),
      child: Shimmer.fromColors(
        baseColor: Theme.of(context).colorScheme.background,
        highlightColor: Theme.of(context).primaryColor.withOpacity(0.8),
        child: Container(
          width: radius * 2,
          height: radius * 2,
          color: Colors.white,
        ),
      ),
    );
  }
}
