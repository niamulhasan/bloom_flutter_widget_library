library bloom;

import 'package:bloom/core/config/my_theme_data.dart';

import './core/widgets/crb_search_box.dart';
import 'package:flutter/material.dart';

import 'core/widgets/crb_circle_avatar.dart';
import 'core/widgets/crb_clip.dart';
import 'core/widgets/crb_modal.dart';

class Bloom {
  static get themeDataLight => MyThemeData.light;
  static get themeDataDark => MyThemeData.dark;
  static Widget searchBox(
      {Key? key,
      String hintText = "Search Anything",
      IconData icon = Icons.search}) {
    return CrbSearchBox(
      key: key,
      hintText: hintText,
      icon: icon,
    );
  }

  static Widget clip({Key? key, String text = "Clip Text"}) {
    return CrbClip(
      key: key,
      text,
    );
  }

  static Widget modal(
      {Key? key,
      EdgeInsetsGeometry padding = const EdgeInsets.symmetric(horizontal: 60.0),
      double height = 420.0,
      Color? background
      }) {
    return CrbModal(
      key: key,
      padding: padding,
      height: height,
      background: background,
    );
  }

  static Widget circleAvatar({
    double radius = 40,
    ImageProvider? image,
    Color? backgroundColor,
    String? altImage,
}) {
    return CrbCircleAvatar(
      radius: radius,
      image: image,
      backgroundColor: backgroundColor,
      altImage: altImage,
    );
  }
}
