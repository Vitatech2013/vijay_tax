import 'dart:io';
import 'package:flutter/material.dart';
import '../../constants/colors.dart';
import '../../constants/fonts.dart';

import 'mybutton_regular.dart';

onBackPressed(
  BuildContext context,
) {
  Size size = MediaQuery.of(context).size;
  return showDialog(
    context: context,
    barrierDismissible: false,
    barrierColor: red.withOpacity(.3),
    builder: (context) => AlertDialog(
      title: Text(
        "Exit App",
        style: FontStyles().h2(color: black),
      ),
      titleTextStyle: FontStyles().h2(color: black),
      content: Text("Are you sure you want to exit the app ?",
          style: FontStyles().h3(color: black)),
      contentTextStyle: FontStyles().h4(color: black),
      actionsAlignment: MainAxisAlignment.center,
      actionsOverflowAlignment: OverflowBarAlignment.center,
      actionsOverflowButtonSpacing: 10,
      actions: <Widget>[
        MyButtonRegular(
          title: "close",
          textcolor: black,
          color: ash,
          size: size * .5,
          onTap: () {
            Navigator.of(context).pop(false);
          },
        ),
        const SizedBox(width: 15),
        MyButtonRegular(
          title: 'Exit App',
          color: red,
          textcolor: white,
          size: size * .5,
          onTap: () {
            exit(0);
          },
        ),
        const SizedBox(height: 15),
      ],
    ),
  );
}
