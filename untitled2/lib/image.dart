import 'package:flutter/material.dart';

class ImageDemo extends StatelessWidget {
  const ImageDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 100),
            child: Image.asset(
              "assets/images/google.png",
              height: 100,
              width: 100,
            ),
          ),
          Image.network(
            "https://e7.pngegg.com/pngimages/480/206/png-clipart-fruit-salad-on-bowl-juice-fruit-salad-junk-food-eating-fruit-salad-natural-foods-food-thumbnail.png",
            height: 50,
            width: 50,
          ),
        ],
      ),
    );
  }
}
