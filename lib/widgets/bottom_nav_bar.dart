import 'package:flutter/material.dart';
import 'package:homepage/widgets/ClipBottomBar.dart';

Widget bottomNavBar(Size size){
  return SizedBox(
    height: 110,
    child: Stack(
      children: [
        Align(
          alignment: Alignment.bottomCenter,
          child: CustomPaint(
            size: Size(size.width,110),
            painter: CustomBottomBar(),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Container(
            padding: const EdgeInsets.all(16),
            height: 90,
            width: 90,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(360),
              color: const Color(0xffED7D2B),
            ),
            child: Image.asset('assets/fast_pay_icon.png'),
          ),
        ),
        Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 40.0, bottom: 10),
              child: Image.asset('assets/foodcard_icon.png',
                scale: 0.9,
              ),
            )),
        Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 40.0, bottom: 10),
              child: Image.asset('assets/salarycard_icon.png',
                scale: 0.9,
              ),
            )
        ),
      ],
    ),
  );
}