import 'package:flutter/material.dart';

class ImageExample extends StatelessWidget {
  const ImageExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.network(
      'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
    );
  }
}
