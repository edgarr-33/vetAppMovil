import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:mpv_v1/src/styles_colors/colors/colors_views.dart';

import 'content_onBoarding.dart';


class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  PageController controller = PageController();
  int pages = 0;
  List<Map<String, String>> onBoardingDatas = [
    {
      "text": "ESPARCIMIENTO",
      "text1": "Brindamos todos los servicion para consentir a tu mascota",
      "image": "assets/images/B1.png",
    },
    {
      "text": "ADOPCIÓN",
      "text1": "Brindamos todos los servicion para consentir a tu mascota",
      "image": "assets/images/B2.png",
    },
    {
      "text": "HOSPITALIDAD",
      "text1": "Brindamos todos los servicion para consentir a tu mascota",
      "image": "assets/images/B3.png",
    },
      {
      "text": "VETERINARIA",
      "text1": "Brindamos todos los servicion para consentir a tu mascota",
      "image": "assets/images/B4.png",
    },
      {
      "text": "TIENDA",
      "text1": "Brindamos todos los servicion para consentir a tu mascota",
      "image": "assets/images/B5.png",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
      color: Colors.white,
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 4,
              child: PageView.builder(
                controller: controller,
                onPageChanged: (value){
                  setState(() {
                    pages = value;
                  });
                },
                itemCount: onBoardingDatas.length,
                itemBuilder: (context,index)=> ContentBoarding(
                  text:onBoardingDatas[index]["text"]!,
                  text1: onBoardingDatas[index]["text1"]!,
                  image:onBoardingDatas[index]["image"]!,
                ),
              ),
              
            ),
            Expanded(
              flex: 3,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      onBoardingDatas.length,
                      (index) => newMethod(index: index),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.only(top: 150)),
                  SizedBox(
                    
                    width: 300,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        if(pages == onBoardingDatas.length - 1){
                          Navigator.pushNamed(context, 'progress') ;
                        }
                        else{
                         controller.nextPage(duration: const Duration(milliseconds: 250), curve: Curves.easeIn);
                          
                        }

                      },
                      child: Text(
                        pages == onBoardingDatas.length - 1
                            ? 'Continuar'
                            : 'Siguiente', 
                        style: TextStyle(
                            color: pages == onBoardingDatas.length - 1
                                ? ColorSelect.btnBackgroundBo1
                                : ColorSelect.txtBoSubHe,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25), 
                        ),
                        side:  pages == onBoardingDatas.length - 1
                          ? const BorderSide(width: 0, color: Colors.black12)
                          : const BorderSide(width: 3.0, color: ColorSelect.txtBoSubHe),
                       
                        primary: pages == onBoardingDatas.length - 1
                            ? ColorSelect.btnBackgroundBo2
                            : ColorSelect.btnBackgroundBo1,
                      ),
                    ),
                  )
                ],
              ),
            )
      
         
          
            
            
          ],
        ),
      ),
    ),),);
  }

  AnimatedContainer newMethod({required int index}) {
    return AnimatedContainer(margin: EdgeInsets.only(right: 10),
                  height: 4,
                   width:pages==index ? 20:12,
                    duration: kThemeAnimationDuration,
                     decoration: BoxDecoration(
                       color: pages == index 
                        ? ColorSelect.paginatorNext
                        :ColorSelect.paginator,
                       borderRadius: BorderRadius.circular(3)) ,);
  }

  
}