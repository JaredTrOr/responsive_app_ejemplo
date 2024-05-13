import 'package:flutter/material.dart';

class ResponsiveImage extends StatelessWidget {
  final String contentImage;
  final double? porcentageWidth;
  final String typeOfImage;
  const ResponsiveImage({super.key, required this.contentImage, this.porcentageWidth, required this.typeOfImage});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double imageWidth = screenWidth * (porcentageWidth ?? 0.7); // Adjust as needed

    if (typeOfImage == "network") {
      return Image.network(
        contentImage, // Path to your image asset
        width: imageWidth,
      );
    }

    else if (typeOfImage == "asset") {
      return Image.asset(
        contentImage, // Path to your image asset
        width: imageWidth,
      );
    }

    return const SizedBox();

  }
}
