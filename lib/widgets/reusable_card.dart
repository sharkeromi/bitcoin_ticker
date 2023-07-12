import 'package:bitcoin_ticker/constants/color.dart';
import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  const ReusableCard({super.key, required this.cardChild});

  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        height: 165,
        width: 170,
        decoration: BoxDecoration(
          gradient: cGradient,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: cardChild,
      ),
    );
  }
}
