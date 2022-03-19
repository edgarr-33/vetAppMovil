import 'package:flutter/material.dart';
import 'package:mpv_v1/src/styles_colors/colors/colors_views.dart';

class InicioSesion extends StatefulWidget {
  InicioSesion({Key? key}) : super(key: key);

  @override
  State<InicioSesion> createState() => _InicioSesionState();
}

class _InicioSesionState extends State<InicioSesion> {
  final _email = TextEditingController();
  final _password = TextEditingController();

  late String _mail;
  late String _passw;

  String password = '';
  bool isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: ColorSelect.paginatorNext),
        backgroundColor: ColorSelect.appBar,
        title: const Text(
          'Iniciar Sesión',
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
            inputs(width, height, context),
          ],
        ),
      ),
    );
  }

  SizedBox texto() {
    return const SizedBox(
            width: double.infinity,
            height: 70,
            child: Center(
                child: Text('Inicia sesión con tu cuenta para continuar')),
          );
  }

  Container inputs(double width, double height, BuildContext context) {
    return Container(
      height: 800,
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
                hintText: 'Email Address',
              ),
            ),
          ),
          buildPassword(width, height),
          Container(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 115),
                  width: width * 0.9,
                  child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'recuperar');
                      },
                      child: const Text(
                        '¿Has olvidado tu contraseña?',
                        style: TextStyle(
                            color: ColorSelect.paginatorNext,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      )),
                )
              ],
            ),
          ),
          boton(),
          Container(
            width: 300,
            height: 48,
            margin: const EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  '¿Todavía no tienes cuenta? ',
                  style: TextStyle(
                    fontSize: 13,
                  ),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'registro');
                    },
                    child: const Text(
                      'Registrate',
                      style: TextStyle(
                          color: ColorSelect.paginatorNext,
                          fontSize: 13,
                          fontWeight: FontWeight.bold),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }

  Container boton() {
    return Container(
      margin: const EdgeInsets.only(top: 290),
      width: 300,
      height: 48,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: ColorSelect.btnBackgroundBo2,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30))),
        onPressed: () {},
        child: const Text('Ingresar'),
      ),
    );
  }

  Widget buildPassword(width, height) => Column(
        children: [
          Container(
              padding: EdgeInsets.only(right: 250),
              child: const Text(
                'Contraseña',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
              )),
          Container(
            width: width * 0.8,
            height: height * 0.1,
            margin: const EdgeInsets.only(top: 15),
            child: TextField(
              onChanged: (value) => setState(() => this.password = value),
              onSubmitted: (value) => setState(() => this.password = value),
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide(color: ColorSelect.paginator),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                hintText: 'Password',
                suffixIcon: IconButton(
                  icon: isPasswordVisible
                      ? const Icon(Icons.visibility_off)
                      : const Icon(Icons.visibility),
                  onPressed: () =>
                      setState(() => isPasswordVisible = !isPasswordVisible),
                ),
                border: const OutlineInputBorder(),
              ),
              obscureText: isPasswordVisible,
            ),
          ),
        ],
      );
}
