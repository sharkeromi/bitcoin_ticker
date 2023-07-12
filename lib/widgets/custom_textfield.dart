import 'package:bitcoin_ticker/constants/color.dart';
import 'package:bitcoin_ticker/constants/style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width - 10,
      decoration: BoxDecoration(
        border: Border.all(width: 1, style: BorderStyle.solid),
        borderRadius: BorderRadius.circular(25),
        color: cSearchBarColor,
      ),
      child: TextFormField(
        textAlignVertical: TextAlignVertical.center,
        //controller: weatherController.searchCity,
        decoration: const InputDecoration(
          //iconColor: Colors.white,
          contentPadding: EdgeInsets.fromLTRB(12, 10, 10, 12),
          hintStyle: kTextFieldStyle,
          hintText: "Search",
          border: InputBorder.none,
          //fillColor: Colors.white,
          prefixIcon: Icon(Icons.search),
        ),
      ),
    );
  }
}
