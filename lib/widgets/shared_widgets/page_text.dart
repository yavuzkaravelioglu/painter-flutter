import 'package:flutter/material.dart';

class PageText extends StatelessWidget {
  final String text;

  const PageText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 300,
      child: Text("$text"),
    );
  }
}
