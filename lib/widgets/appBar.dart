import 'package:flutter/material.dart';

Widget appBar({String leading, Function onPressed}) {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0.0,
    leading:
        InkWell(onTap: onPressed, child: Image.asset('assets/icons/$leading')),
    title: Image.asset('assets/icons/logo.png'),
    centerTitle: true,
    actions: [
      Image.asset('assets/icons/cart.png'),
    ],
  );
}
