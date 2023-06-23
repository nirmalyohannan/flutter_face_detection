import 'dart:typed_data';

import 'package:flutter/material.dart';

class ImageScreen extends StatelessWidget {
  final Uint8List image;
  const ImageScreen({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(title: const Text('Preview')),
      body: SafeArea(
          child: Image.memory(
        image,
        width: size.width,
        height: size.height,
        fit: BoxFit.contain,
      )),
    );
  }
}
