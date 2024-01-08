import 'package:flutter/material.dart';

class CustomBottomBar extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {



    // Layer 1

    Paint paint_fill_0 = Paint()
      ..color = const Color(0xff252525)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;


    Path path_0 = Path();
    path_0.moveTo(size.width,size.height);
    path_0.lineTo(size.width,size.height);
    path_0.lineTo(size.width,size.height*0.3);
    path_0.quadraticBezierTo(size.width*0.7,size.height*0.3,size.width*0.7,size.height*0.3);
    path_0.cubicTo(size.width*0.62,size.height*0.3,size.width*0.62,0,size.width*0.50,0);
    path_0.cubicTo(size.width*0.38,0,size.width*0.38,size.height*0.3,size.width*0.3,size.height*0.3);
    path_0.quadraticBezierTo(size.width*0.3,size.height*0.3,0,size.height*0.3);
    path_0.lineTo(0,size.height);
    path_0.close();

    canvas.drawPath(path_0, paint_fill_0);


    // Layer 1

    Paint paint_stroke_0 = Paint()
      ..color = const Color(0xff252525)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width*0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;



    canvas.drawPath(path_0, paint_stroke_0);


  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}
