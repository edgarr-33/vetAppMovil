import 'package:flutter/material.dart';
import 'package:mpv_v1/src/styles_colors/colors/colors_views.dart';

class RecuperarContrasenia extends StatefulWidget {
  RecuperarContrasenia({Key? key}) : super(key: key);

  @override
  State<RecuperarContrasenia> createState() => _RecuperarContraseniaState();
}

class _RecuperarContraseniaState extends State<RecuperarContrasenia> {
  final _email = TextEditingController();

  late String _mail;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: ColorSelect.paginatorNext),
        backgroundColor: ColorSelect.appBar,
        title: const Text(
          'Recuperar Constraseña',
          style: TextStyle(fontSize: 18),
        ),
        actions: [
          Image.asset(
            'assets/images/splash.png',
            scale: 0.4,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            texto(),
            inputs(width, height)
          ],
        ),
      ),
    );
  }

  Container inputs(double width, double height) {
    return Container(
            child: Column(
              children: [
                Container(
              padding: EdgeInsets.only(right: 200),
              child: const Text(
                'Correo Electrónico',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
              )),
          Container(
            width: width * 0.8,
            height: height * 0.1,
            margin: const EdgeInsets.only(top: 1),
            child: TextField(
              controller: _email,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide(color: ColorSelect.paginator),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                hintText: 'Correo Electronico',
              ),
            ),
          ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        width: width * 0.8,
                        child: const Center(
                            child: Text(
                          'Ingrese su correo electronico registrado y le enviaremos un correo electronico que contiene un enlace para restablecer su contraseña',
                          style: TextStyle(color: ColorSelect.paginator),
                        )),
                      )
                    ],
                  ),
                ),
                boton()
              ],
            ),
          );
  }

  Container boton() {
    return Container(
                margin: const EdgeInsets.only(top: 450),
                width: 300,
                height: 48,
                child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                primary: ColorSelect.btnBackgroundBo2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30))),
                  onPressed: (){},
                  child: const Text('Enviar Solicitud '),
                ),
              );
  }

  SizedBox texto() {
    return const SizedBox(
            width: double.infinity,
            height: 70,
            child: Center(
                child: Text('Ingresa tu email para restablecer tu contraseña')),
          );
  }
}
