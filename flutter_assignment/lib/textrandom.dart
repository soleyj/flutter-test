import 'package:flutter/material.dart';

class TextRandom extends StatelessWidget {
  final String textrandom;

  TextRandom(this.textrandom);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(textrandom),
    );
  }
}
