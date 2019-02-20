import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


/**
 * 五角星Widget
 */

class FiveStartWidget extends CustomPainter{

  Paint mPaint;
  BuildContext context;
  double _R;


  FiveStartWidget(this.context, this._R){
    mPaint = new Paint();
    mPaint.color = Colors.deepOrange;
  }

  @override
  void paint(Canvas canvas, Size size) {

    var winSize = MediaQuery.of(context).size;
    drawGrid(canvas,winSize);
//    drawCoo(canvas,new Size(160,320),winSize);
//    canvas.translate(160, 320);
//    canvas.drawPath(nStarPath(5, _R, 50), mPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return null;
  }

  void drawGrid(Canvas canvas, Size winSize) {}

}