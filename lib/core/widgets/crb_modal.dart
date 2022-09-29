import 'package:flutter/material.dart';

class CrbModal extends StatelessWidget {
  final EdgeInsetsGeometry padding;
  final double height;
  final Color? background;
  const CrbModal({
    Key? key,
    this.padding = const EdgeInsets.symmetric(horizontal: 60.0),
    this.height = 420.0,
    this.background,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: padding,
        child: Container(
          width: double.infinity,
          height: height,
          decoration: ShapeDecoration(
              color: background ?? Theme.of(context).dialogBackgroundColor,
              shape: ContinuousRectangleBorder(
                  borderRadius: BorderRadius.circular(60.0))),
        ),
      ),
    );
  }
}
