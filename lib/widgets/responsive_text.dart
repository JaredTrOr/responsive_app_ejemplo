import 'package:flutter/material.dart';

class ResponsiveText extends StatelessWidget {
  final String contentText;
  final double? textScale;
  const ResponsiveText({super.key, required this.contentText, this.textScale});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double fontSize = screenWidth / (textScale ?? 20); // Adjust as needed
    return Text(
      contentText,
      style: TextStyle(fontSize: fontSize),
    );
  }
}
