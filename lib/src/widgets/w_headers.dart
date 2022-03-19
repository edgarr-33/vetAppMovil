import 'package:flutter/material.dart';

class WHeadersOne extends StatelessWidget {
  const WHeadersOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      color: Colors.amber,
    );
  }
}

class WHeaders2 extends StatelessWidget {
  const WHeaders2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      color: Colors.amber,
      decoration: const BoxDecoration(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40),bottomRight: Radius.circular(40))),
    );
  }
}

class WHeaders3 extends StatelessWidget {
  const WHeaders3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: 0.15,
      child: Container(
        height: 500,
        color: Colors.amber,
      ),
    );
  }
}

class WHeaders4 extends StatelessWidget {
  const WHeaders4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _WHeaderPainter3(),
      ),
    );
  }
}
class _WHeaderPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    const textStyle = TextStyle(
      color: Colors.black,
      fontSize: 30,

    );
    const textSpan = TextSpan(
      text:"hola mundo canvas",
      style : textStyle,
    );
    final textPainter = TextPainter(
      text: textSpan,
      textDirection: TextDirection.ltr
    ); 
    textPainter.layout(minWidth: 0,maxWidth: size.width);
    final xCenter = (size.width - textPainter.width) *0.1;
    final yCenter = (size.height+textPainter.height)*0.05;
    final offset = Offset(xCenter, yCenter);
    

    final paint = Paint();
    paint.color =Colors.amber;
    paint.style=PaintingStyle.fill;
    paint.strokeWidth=20;
    final path = new Path();
    path.moveTo(0, size.height* 1);
    //path.lineTo(size.width, size.height* 0.5);
    path.lineTo(size.width,0);
    path.lineTo(0,0);
    
    canvas.drawPath(path, paint);
    textPainter.paint(canvas, offset);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
    

  
}

class _WHeaderPainter2 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    const textStyle = TextStyle(
      color: Colors.black,
      fontSize: 30,
    );
    const textSpan = TextSpan(
      text: 'Hola mundo Canvas',
      style: textStyle
    );

    final textPainter = TextPainter(
      text: textSpan,
      textDirection: TextDirection.ltr
    );

    textPainter.layout(
      minWidth: 0,
      maxWidth: size.width
    );

    final xCenter = (size.width - textPainter.width)*0.5;
    final yCenter = (size.height+textPainter.height)*0.05;
    final offset = Offset(xCenter, yCenter);


    final paint = Paint();
    paint.color =Colors.amber;
    paint.style=PaintingStyle.fill;
    paint.strokeWidth=20;

    final path = Path();

    //path.moveTo(0, size.height0.5);
    path.lineTo(size.width *0.5, size.height*0.5);
    path.lineTo(size.width, 0);
    //path.lineTo(0, 0);

    canvas.drawPath(path, paint);
    textPainter.paint(canvas, offset);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }

}

class _WHeaderPainter3 extends CustomPainter {

  @override
  void paint(Canvas canvas, Size size) {
    const textStyle = TextStyle(
      color: Colors.black,
      fontSize: 13
    );

    const textSpan = TextSpan(
      text: 'hola mundo canvas',
      style: textStyle
    );

    final textPainter = TextPainter(
      text: textSpan,
      textDirection: TextDirection.ltr
    );

    const textSpan2 = TextSpan(
      text: 'hola mundo canvas',
      style: textStyle
    );

    final textPainter2 = TextPainter(
      text: textSpan2,
      textDirection: TextDirection.ltr
    );


    textPainter.layout(minWidth: 0,maxWidth: size.width);

    textPainter2.layout(minWidth: 0,maxWidth: size.width);

    final xCenter = (size.width - textPainter.width) * 0.15;
    final yCenter = (size.height + textPainter.height)* 0.05;

    final xCenter2 = (size.width - textPainter2.width) * 0.85;
    final yCenter2 = (size.height + textPainter2.height)* 0.05;

    final offset = Offset(xCenter, yCenter);
    final offset2 = Offset(xCenter2, yCenter2);

        
    final paint = Paint();
    paint.color = Colors.amber; 
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 20;

    final path = Path();
    path.moveTo(0, 0);
    
    path.lineTo(size.width*0.25, size.height * 0.2);
    path.lineTo(size.width * 0.5, 0);

    path.lineTo(size.width*0.75, size.height * 0.2);

    path.lineTo(size.width*1, 0);
    // path.lineTo(size.width, 0);
    // path.lineTo(0, 0);

    canvas.drawPath(path, paint); 
    textPainter.paint(canvas, offset);
    textPainter2.paint(canvas, offset2);
    // TODO: implement paint
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }



}