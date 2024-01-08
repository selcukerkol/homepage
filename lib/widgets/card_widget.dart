import 'package:flutter/material.dart';
import 'package:homepage/widgets/RactClipDraw.dart';

Widget cardWidget(String backImage,
    String cardName,
    String cardNumber,
    String name,
    String cardDate,
    String cardBalance,
    Color cardColor,
    Color backColor){
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 10.0),
    child: Container(
      height: 200,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
              image: AssetImage(backImage),
              fit: BoxFit.cover
          )
      ),
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: backColor.withOpacity(0.7),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  cardName,
                  style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),
                ),
                const SizedBox(height: 10,),
                const Text(
                  'Card Number',
                  style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.normal,
                      color: Colors.white
                  ),
                ),
                Text(
                  cardNumber,
                  style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),
                ),
                const SizedBox(height: 10,),
                Text(
                  name,
                  style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.white
                  ),
                ),
                Text(
                  cardDate,
                  style: const TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.normal,
                      color: Colors.white
                  ),
                ),
                const SizedBox(height: 10,),
                const Text(
                  'Your Balance',
                  style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.normal,
                      color: Colors.white
                  ),
                ),
                Row(
                  children: [
                    Image.asset('assets/wallet.png'),
                    const SizedBox(width: 10,),
                    Text(
                      '\$ $cardBalance',
                      style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Align(
              alignment: Alignment.bottomRight,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.bottomRight,
                    child: CustomPaint(
                      size: Size(250,(250*0.583).toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                      painter: RPSCustomPainter(
                          cardColor
                      ),
                    ),
                  ),
                  Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Image.asset('assets/visa_icon.png', color: Colors.white,),
                      )
                  ),
                ],
              )
          )
        ],
      ),
    ),
  );
}