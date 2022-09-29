import 'package:flutter/material.dart';

class CrbClip extends StatelessWidget {
  final String text;
  const CrbClip(
    this.text, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 4.0),
      decoration: ShapeDecoration(
        color: Theme.of(context).primaryColor.withOpacity(0.8),
        shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 10.0,
        ),
      ),
    );
  }
}
