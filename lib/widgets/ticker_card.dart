import 'package:bitcoin_ticker/constants/style.dart';
import 'package:bitcoin_ticker/controller/currencyController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'reusable_card.dart';

class TickerCard extends StatelessWidget {
  final String icon;
  final String crypto;
  CurrencyController currencyController = Get.find<CurrencyController>();

  TickerCard({
    super.key,
    required this.icon,
    required this.crypto,
  });

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
            Obx(() => Text(
                  '1 $crypto = ${currencyController.coinValues.value[crypto] ?? 'Loading..'} ${currencyController.showCurrency.value}',
                  style: kCardTextStyle,
                )),
          ],
        ),
      ),
    );
  }
}
