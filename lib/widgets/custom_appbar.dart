import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'custom_textbutton.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text("BITCOIN TICKER"),
      //elevation: 10,
      flexibleSpace: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topRight,
              colors: <Color>[Color(0xFF080808), Color(0xFF0D0D0D)]),
        ),
      ),
      actions: [
        Row(
          children: [
            Padding(padding: const EdgeInsets.all(10.0), child: CustomTextButton()),
          ],
        )
      ],
    );
  }
}
