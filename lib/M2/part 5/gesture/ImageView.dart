import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
class ImageViews extends StatefulWidget {
  const ImageViews({Key? key}) : super(key: key);

  @override
  State<ImageViews> createState() => _ImageViewsState();
}

class _ImageViewsState extends State<ImageViews> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: PhotoView(
          imageProvider: AssetImage("assets/city_background.jpg"),
        )
    );
  }
}
