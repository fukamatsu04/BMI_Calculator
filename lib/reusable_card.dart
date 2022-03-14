import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class ReusableCard extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const ReusableCard({required this.color, required this.cardChild});

  final Color color;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: const EdgeInsets.all(15.0),
      height: 200.0,
      width: 170.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: color,
      ),
    );
  }
}
