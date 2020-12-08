import 'dart:math';

import 'package:flutter/material.dart';

class BubblePage extends StatefulWidget {
  @override
  _BubblePageState createState() => _BubblePageState();
}

class _BubblePageState extends State<BubblePage> {
  List<Bubble> bubbleList = [];
  @override
  void initState() {
    // TODO: implement initState
    initBubbleList();
    super.initState();
  }
  initBubbleList(){
    for(int i=0;i<20;i++){
      bubbleList.add(Bubble());
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:Container(
        child: Stack(
          children: [
            generateBubbleBackground(),
            drawBubbles(context)
          ],
        ),
      )
    );
  }
  generateBubbleBackground(){
    return Container(
      decoration: BoxDecoration(
          gradient:LinearGradient(
              begin:Alignment.topLeft,
              end:Alignment.bottomRight,
              colors:<Color>[
                Colors.lightBlueAccent.withOpacity(0.3),
                Colors.lightBlue.withOpacity(0.3),
                Colors.blue.withOpacity(0.3)
              ]
          )
      )
    );
  }
  drawBubbles(BuildContext context){
    return CustomPaint(
      size: MediaQuery.of(context).size,
      painter: CustomBubblePainter(bubbleList: bubbleList),
    );
  }
}
class CustomBubblePainter extends CustomPainter{
  List<Bubble> bubbleList;
  Paint _painter = Paint()..isAntiAlias=true;
  CustomBubblePainter({this.bubbleList});
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    bubbleList.forEach((element) {
      _painter.color = element.color;
      Offset offsetXY = calculateXY(element.speed, element.theta);
      double dx = offsetXY.dx + element.position.dx;
      double dy = offsetXY.dy + element.position.dy;
      element.position = Offset(dx,dy);
      canvas.drawCircle(element.position, element.radius,_painter);
    });
  }
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
  Offset calculateXY(double speed,double theta){
    return Offset(speed*cos(theta),speed*sin(theta));
  }
}
class Bubble{
  //随机数
  Random _random = new Random(DateTime.now().microsecondsSinceEpoch);
  //泡泡半径
  double get radius{
    return _random.nextDouble()*100;
  }
  //泡泡运动速度
  double get speed{
  return _random.nextDouble()*10;;
  }
  //泡泡颜色
  Color get color{
    int opacity = _random.nextInt(200);
    return Color.fromARGB(opacity, 255, 255, 255);
  }
  //泡泡位置
  Offset position;
  //泡泡运动方向
  double get theta{
    return _random.nextDouble()*30;
  }
  Bubble(){
    position = Offset(_random.nextDouble()*400,_random.nextDouble()*600);
  }
}
