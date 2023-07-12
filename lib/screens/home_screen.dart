import 'package:bitcoin_ticker/constants/consts.dart';
import 'package:bitcoin_ticker/widgets/custom_appbar.dart';
import 'package:bitcoin_ticker/widgets/custom_textfield.dart';
import 'package:bitcoin_ticker/widgets/ticker_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF080808),
      appBar: PreferredSize(
          preferredSize: Size(MediaQuery.of(context).size.width, 50),
          child: const CustomAppBar()),
      body: Column(
        children: [
          CustomTextField(),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Expanded(
                child: TickerCard(
                  icon: btc,
                  crypto: 'Bitcoin',
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: TickerCard(
                  icon: eth,
                  crypto: 'Ethereum',
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: TickerCard(
                  icon: ltc,
                  crypto: 'LiteCoin',
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
