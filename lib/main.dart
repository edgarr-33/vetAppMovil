import 'package:flutter/material.dart';
import 'package:mpv_v1/src/page/ProgressView.dart';
import 'package:mpv_v1/src/page/home_header.dart';
import 'package:mpv_v1/src/page/inicioSesion.dart';
import 'package:mpv_v1/src/page/on_boarding.dart';
import 'package:mpv_v1/src/page/recuperarContrase%C3%B1a.dart';
import 'package:mpv_v1/src/page/registro.dart';
import 'package:mpv_v1/src/splash/splash_view.dart';


import 'login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MVP Demo',
      initialRoute: 'splash',
      routes: {
        'InitialPage': (BuildContext context)=>const Login(),
        'InitialHeader': (BuildContext context)=>const HomeHeader(),
        'splash': (BuildContext context) => SplashView(),
        'onboarding': (BuildContext context) => const OnBoarding(),
        'progress': (BuildContext context) =>  ProgressView(),
        'registro': (BuildContext context) =>  Registro(),
        'login' :(BuildContext context) =>  InicioSesion(),
        'recuperar' :(BuildContext context) =>  RecuperarContrasenia(),

        
      },
      // home: Login()
    );
  }
}
