import 'package:bitcoin_ticker/controller/currencyController.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class CustomTextButton extends StatelessWidget {
  CustomTextButton({super.key});
  final CurrencyController currencyController = Get.find<CurrencyController>();
  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: TextButton.styleFrom(
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          padding: EdgeInsets.zero,
          minimumSize: Size.zero,
        ),
        onPressed: () {
          dialogBuilder(context);
        },
        child: Obx(() => Text(
              currencyController.selectedCurrency.value,
              style: const TextStyle(fontSize: 20),
            )));
  }

  Future<void> dialogBuilder(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            child: Container(
              height: 200,
              alignment: Alignment.center,
              padding: const EdgeInsets.only(bottom: 30),
              color: Colors.white,
              child: Padding(
                  padding: const EdgeInsets.all(16.0), child: iOSPicker()),
            ),
          );
        });
  }

  CupertinoPicker iOSPicker() {
    CurrencyController currencyController = Get.find<CurrencyController>();
    List<Text> pickerItems = [];
    for (String currency in currencyController.currenciesList) {
      pickerItems.add(Text(currency));
    }

    return CupertinoPicker(
      itemExtent: 32.0,
      onSelectedItemChanged: (selectedIndex) async {
        currencyController.selectedCurrency.value =
            currencyController.currenciesList[selectedIndex];
        await currencyController
            .getCoinData(currencyController.selectedCurrency.value);
      },
      children: pickerItems,
    );
  }
}
