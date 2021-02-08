import 'package:flutter/material.dart';

Widget BrandName() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        "Wall",
        style:
            TextStyle(fontFamily: 'Ubuntu', fontSize: 24, color: Colors.black),
      ),
      Text("State",
          style:
              TextStyle(fontFamily: 'Ubuntu', fontSize: 24, color: Colors.blueGrey[600])),
    ],
  );
}
