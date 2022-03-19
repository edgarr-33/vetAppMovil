import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mpv_v1/src/painter/ProgressPainter.dart';

class ProgressView extends StatefulWidget {
  ProgressView({Key? key}) : super(key: key);

  @override
  State<ProgressView> createState() => _ProgressViewState();
}

class _ProgressViewState extends State<ProgressView> {
  double progress = 0.0;
  
  @override
  void initState() {
    
    updateProgress();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    updateProgress();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.transparent,
          width: 200,
          height: 200,
          
          child: CustomPaint(
             
            painter: ProgressPainter(barra: progress),
          ),
        )
      ),
    );
  }

  void updateProgress() {
    Timer.periodic(
      const Duration(
        milliseconds: 10
      ), (timer) {
        if (progress == 100) {
          Navigator.pushReplacementNamed(context, 'InitialPage');
         
          // Navigator.pop(context);
          progress = 0;
           timer.cancel();
          // Navigator.pushNamed(context, 'InitialPage');
          
        }
        else {
          setState(() {
            progress = progress + 1;
          });
        }
    });
  }
}