import 'package:flutter/material.dart';

Widget customAddCardButton(){
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
    child: Material(
      borderRadius: BorderRadius.circular(10),
      color: const Color(0xff252525),
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.add, color: Color(0xccED7D2B),),
            Text('Add Other Card',
              style: TextStyle(color: Color(0xccED7D2B)),)
          ],
        ),
      ),
    ),
  );
}