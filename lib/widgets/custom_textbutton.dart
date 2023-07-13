import 'package:bitcoin_ticker/constants/style.dart';
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
        child: const Text(
          "Select",
          style: TextStyle(fontSize: 20),
        ));
  }

  Future<void> dialogBuilder(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 150,
                  alignment: Alignment.center,
                  //padding: const EdgeInsets.only(bottom: 30),
                  //color: Colors.amber,
                  child: Padding(
                      padding: const EdgeInsets.all(16.0), child: iOSPicker()),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                          onPressed: () async {
                            //await currencyController.getCoinData(
                            //currencyController.selectedCurrency.value);
                            currencyController.showCurrency.value =
                                currencyController.selectedCurrency.value;
                            Get.back();
                          },
                          style: TextButton.styleFrom(
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            padding: EdgeInsets.zero,
                            minimumSize: Size.zero,
                          ),
                          child: Container(
                            height: 30,
                            width: 80,
                            decoration: const BoxDecoration(
                                color: Color(0xFF007BEC),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15))),
                            child: const Center(
                              child: Text(
                                'Confirm',
                                style: kPopTextStyle,
                              ),
                            ),
                          )),
                    ],
                  ),
                )
              ],
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
        // await currencyController.getCoinData(currencyController.selectedCurrency.value);
      },
      children: pickerItems,
    );
  }
}
