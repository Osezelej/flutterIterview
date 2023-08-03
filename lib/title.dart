import 'package:flutter/material.dart';

class Title_ extends StatelessWidget {
  final String title;
  const Title_({super.key, this.title = ''});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
