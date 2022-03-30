import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mpv_v1/src/styles_colors/colors/colors_views.dart';

class Login extends  StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children:  [
              Container(
                width: 140,
                    padding: const EdgeInsets.only(bottom: 20, top: 50),
                    child: Image.asset(
                      'assets/images/splash.png',
                     
                    ),
                ),
              Column(
                children: [
                  Container( 
                    margin: const EdgeInsets.only(top: 50),
                    width: 300,
                    height: 48,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: ColorSelect.fb,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)
                        )
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const[
                          Icon(FontAwesomeIcons.google), 
                          Text('Continuar con Google',
                          style: TextStyle(fontSize: 14),  
                        )
                        ],
        
                      ),
                      onPressed: (){},
                    ),
                  ),
        
                  Container(
                    margin: const EdgeInsets.only(top: 30),
                    width: 300,
                    height: 48,      
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: ColorSelect.google,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)
                        )
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const[
                          Icon(FontAwesomeIcons.facebookSquare),
                          Text('Continuar con Facebook',
                          style: TextStyle(fontSize: 14),  
                        )
                        ],
        
                      ),
                      onPressed: (){},
                    ),
                  ),
        
                   Container(
                    margin: const EdgeInsets.only(top: 30),
                    width: 300,
                    height: 48,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: ColorSelect.btnTextBo2,
                        side: const BorderSide(color: ColorSelect.btnTextBo1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)
                          
                        )
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const[
                          Icon(Icons.email ,color:ColorSelect.txtBoSubHe),
                          Text('Registrarse con e-mail',
                          style: TextStyle(fontSize: 14,color: ColorSelect.txtBoSubHe),  
                        )
                        ],
        
                      ),
                      onPressed: (){
                        Navigator.pushNamed(context, 'registro');
                      },
                    ),
                  ),
                  
                  
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 30),
                child: TextButton(
                  onPressed: (){},
                  child: const Text(' Entrar como invitado',
                  style: TextStyle(
                        color: ColorSelect.paginatorNext,
                        fontSize: 13,
                        fontWeight: FontWeight.bold
                      ),  ),
                )
              ),
              Container(
                margin: const EdgeInsets.only(top: 1),
                child: TextButton(
                  onPressed: (){},
                  child: const Text(' Entrar como vendedor',
                  style: TextStyle(
                        color: ColorSelect.btnBackgroundBo2,
                        fontSize: 13,
                        fontWeight: FontWeight.bold
                      ),  ),
                )
              ),
              Container(
                margin: const EdgeInsets.only(top: 130),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('¿Ya tienes cuenta?',
                    style: TextStyle(fontSize: 14, ),
                    ),
                    TextButton(
                      onPressed: (){
                         Navigator.pushNamed(context, 'login');
                      },
                      child: const Text('Iniciar Sesión',
                      style: TextStyle(
                        color: ColorSelect.paginatorNext,
                        fontSize: 13,
                        fontWeight: FontWeight.bold
                      ),  
                    )
                    )
                  ],
                  ),
              )
              
              
        
        
              
            ],
          ),
        ),
      ),
    );
  }
}