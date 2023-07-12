import 'package:bitcoin_ticker/constants/color.dart';
import 'package:bitcoin_ticker/constants/style.dart';
import 'package:flutter/material.dart';

import 'reusable_card.dart';

class TickerCard extends StatelessWidget {
  final String icon;

  final String crypto;

  TickerCard({super.key, required this.icon, required this.crypto});

  @override
  Widget build(BuildContext context) {
    return ReusableCard(
      cardChild: Padding(
        padding: const EdgeInsets.only(left: 16.0),
        child: Row(
          children: [
            Image.asset(
              icon,
              scale: 5,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              '1 $crypto = ',
              style: kCardTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}
