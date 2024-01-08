import 'package:flutter/material.dart';

Widget customAppBar(){
  return Container(
    height: AppBar().preferredSize.height,
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Stack(
      children: [
        Align(
            alignment: Alignment.centerLeft,
            child: Image.asset('assets/menu_icon.png')
        ),
        const Align(
          alignment: Alignment.center,
          child: Text('Home Page',
            style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold
            ),),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset('assets/person_icon.png'),
              const SizedBox(width: 6,),
              Image.asset('assets/exit_icon.png'),
            ],
          ),
        ),
      ],
    ),
  );
}