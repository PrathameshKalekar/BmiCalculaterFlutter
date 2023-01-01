import 'package:flutter/material.dart';

class Reusablecard extends StatelessWidget {
  const Reusablecard(
      {super.key,
      required this.colour,
      required this.cardChild,
      required this.onPressed});
  final Color colour;
  final Widget cardChild;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
        margin: const EdgeInsets.all(15.0),
        child: cardChild,
      ),
    );
  }
}
