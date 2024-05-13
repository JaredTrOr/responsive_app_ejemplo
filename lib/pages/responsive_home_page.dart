import 'package:flutter/material.dart';
import 'package:responsive_app_ejemplo/widgets/responsive_text.dart';
import 'package:responsive_app_ejemplo/widgets/responsive_image.dart';

class ResponsiveHomePage extends StatelessWidget {
  const ResponsiveHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Responsive App'),
      ),
      body: SafeArea(
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Widgets responsive personalizados", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                const ResponsiveText(contentText: "Hello world"),
                const SizedBox(height: 10),
                const ResponsiveImage(typeOfImage: "network", contentImage: "https://cdn.pixabay.com/photo/2022/05/16/16/14/summer-7200676_1280.png"),

                const SizedBox(height: 30),
                const Text("Widgets normales personalizados", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                const Text("Hello world" , style: TextStyle(fontSize: 20)),
                Image.network("https://cdn.pixabay.com/photo/2022/05/16/16/14/summer-7200676_1280.png", width: 200),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
