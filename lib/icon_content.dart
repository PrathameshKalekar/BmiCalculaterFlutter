import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  const IconContent(
      {super.key, required this.imageIcon, required this.iconText});

  final IconData imageIcon;
  final String iconText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Icon(
            imageIcon,
            size: 80.0,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            iconText,
            style: const TextStyle(
              fontSize: 18.0,
              color: Color(0xFF8D8E98),
            ),
          ),
        ),
      ],
    );
  }
}
