import 'package:flutter/material.dart';

class RPSCustomPainter extends CustomPainter{

  Color color;
  RPSCustomPainter(this.color);

  @override
  void paint(Canvas canvas, Size size) {



    // Layer 1

    Paint paint_fill_0 = Paint()
      ..color = color
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width*0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;


    Path path_0 = Path();
    path_0.moveTo(size.width*0.5324882,size.height*1.0039381);
    path_0.lineTo(size.width*1.0025643,size.height*1.0059477);
    path_0.lineTo(size.width*1.0025643,size.height*-0.0028655);
    path_0.quadraticBezierTo(size.width*0.8553168,size.height*0.0920674,size.width*0.6594674,size.height*0.2171643);
    path_0.quadraticBezierTo(size.width*0.5368256,size.height*0.2914989,size.width*0.5336487,size.height*0.4695284);
    path_0.lineTo(size.width*0.5324882,size.height*1.0039381);
    path_0.close();

    canvas.drawPath(path_0, paint_fill_0);


    // Layer 1

    Paint paint_stroke_0 = Paint()
      ..color = color
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
