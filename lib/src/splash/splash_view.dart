import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:ui' as ui;

import 'package:mpv_v1/src/page/on_boarding.dart';
import 'package:mpv_v1/src/styles_colors/colors/colors_views.dart';

class SplashView extends StatefulWidget {
  SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  
  
  ui.Image? image;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _loadImage('assets/images/splash.png');

    _toOnBording();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(

        child: SizedBox(
          child: CustomPaint(
            painter: _SplashScreanCanvas(image),
          ),
          width: double.infinity,
          height: double.infinity,
        ),



      ),
    );
  }

  _toOnBording() async {

    await Future.delayed(const Duration(milliseconds: 5000), (){}); //5

    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => OnBoarding()));


  }

  void _loadImage(String s) async {

    final data = await rootBundle.load(s);

    final bytes = data.buffer.asUint8List();

    final image = await decodeImageFromList(bytes);

    setState(() {
      this.image = image;
    });
  }

  

} 

class _SplashScreanCanvas extends CustomPainter {

  ui.Image? imageCanvas;

   _SplashScreanCanvas(this.imageCanvas);


  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    
    final paint = Paint();

    paint.color = ColorSelect.btnBackgroundBo2;

    paint.style = PaintingStyle.fill;

    paint.strokeWidth = 5;
    final path = Path();

    path.lineTo(0, size.height*0.1);

    path.quadraticBezierTo(size.width*0.1, size.height * 0.2, size.width/3, size.height*0.15);
    
    path.quadraticBezierTo(size.width/2.1, size.height * 0.1, (size.width/3)*2, size.height*0.12);
    
    path.quadraticBezierTo(size.width/1.1, size.height * 0.15, (size.width/3)*3, size.height*0.12);

    
    path.lineTo(size.width, 0);

    canvas.drawPath(path, paint);

    final paint2 = Paint();

    paint2.color = ColorSelect.btnBackgroundBo2;

    paint2.style = PaintingStyle.fill;

    paint2.strokeWidth = 5;

    final path2 = Path();

    path2.lineTo(0, size.height);

    path2.quadraticBezierTo(size.width*0.75, size.height*0.80, size.width, size.height);

    path2.lineTo(size.width, size.height);
    path2.lineTo(0, size.height);

    canvas.drawPath(path2, paint2);

    canvas.scale(0.30,0.30);
    
    canvas.drawImage(imageCanvas!, const Offset(125 * 2.5, 320 * 3.0), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}