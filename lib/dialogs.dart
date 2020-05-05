import 'package:flutter/material.dart';

class Dialogs {
  information(BuildContext context, String title, String imgPath) {
    return showDialog(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) {
          return AlertDialog(
              title: Text(title,textAlign: TextAlign.center, style: TextStyle(
                color: Colors.lightGreen,
                fontWeight: FontWeight.bold,
                fontFamily: 'Quicksand',
                fontSize: 25.0,
              ),),
              content: Container(
                height: 80.0,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(imgPath),fit: BoxFit.fill)
                ),
              )
          );
        });
  }
}

