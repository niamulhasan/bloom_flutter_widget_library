import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../config/continous_rectangle_border_path.dart';
import '../config/helper_constants.dart';

// Example Usage

// CrbCard(
//                   bottom: [
//                     Text(
//                       "কক্সবাজার সমুদ্র সৈকত",
//                       style: TextStyle(color: Colors.white),
//                     ),
//                   ],
//                   top: [
//                     CrbClip("কক্সবাজার"),
//                   ],
//                   center: CircleAvatar(
//                     child: Icon(Icons.access_alarm),
//                     radius: 50.0,
//                   ),
//                   backgroundImage: NetworkImage(

//                       "https://www.travelsolutiondesk.com/wp-content/uploads/2019/11/BANDARBAN.jpg"),
//                 );

class CrbCard extends StatelessWidget {
  final List<Widget>? bottom;
  final List<Widget>? top;
  final ImageProvider? backgroundImage;
  final ImageProvider? fadeInBackgroundNetworkImage;
  final Widget? center;
  final String? altImage;
  const CrbCard({
    Key? key,
    this.bottom,
    this.top,
    this.backgroundImage,
    this.center,
    this.fadeInBackgroundNetworkImage,
    this.altImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          backgroundImage != null
              ? Container(
                  decoration: ShapeDecoration(
                    image: DecorationImage(
                        image: backgroundImage!, fit: BoxFit.cover),
                    shape: ContinuousRectangleBorder(
                      borderRadius: BorderRadius.circular(60.0),
                    ),
                  ),
                )
              : Container(
                  decoration: ShapeDecoration(
                    shape: ContinuousRectangleBorder(
                      borderRadius: BorderRadius.circular(60.0),
                    ),
                    color: Theme.of(context).dialogBackgroundColor,
                  ),
                ),
          ClipPath(
            clipper: ContinuousRectangleBorderPath(),
            child: Shimmer.fromColors(
              baseColor: Theme.of(context).colorScheme.background,
              highlightColor: Theme.of(context).primaryColor.withOpacity(0.8),
              child: Container(
                width: double.infinity,
                height: double.infinity,
                color: Colors.white,
              ),
            ),
          ),

          fadeInBackgroundNetworkImage != null
              ? Container(
                  height: double.infinity,
                  width: double.infinity,
                  child: ClipPath(
                    clipper: ContinuousRectangleBorderPath(),
                    child: FadeInImage(
                      height: double.infinity,
                      fit: BoxFit.cover,
                      // fadeInDuration: Duration(seconds: 1),
                      placeholder: MemoryImage(kTransparentImage),
                      image: fadeInBackgroundNetworkImage!,
                      imageErrorBuilder: (context, exception, stackTrace) =>
                          Image.network(
                        altImage!,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                )
              : Container(
                  decoration: ShapeDecoration(
                    shape: ContinuousRectangleBorder(
                      borderRadius: BorderRadius.circular(60.0),
                    ),
                    color: Theme.of(context).colorScheme.secondaryContainer,
                  ),
                ),

          //Show Gradient if there exist any backgorund image
          backgroundImage != null || fadeInBackgroundNetworkImage != null
              ? Container(
                  decoration: ShapeDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.transparent,
                        Colors.transparent,
                        Colors.black.withOpacity(0.9)
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                    shape: ContinuousRectangleBorder(
                      borderRadius: BorderRadius.circular(60.0),
                    ),
                  ),
                )
              : Container(),
          Padding(
            padding: const EdgeInsets.only(
                bottom: 10.0, left: 8.0, right: 8.0, top: 8.0),
            child: Container(
              alignment: Alignment.bottomCenter,
              width: double.infinity,
              height: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: top ?? [Container()],
                  ),
                  center ?? Container(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: bottom ?? [Container()],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
