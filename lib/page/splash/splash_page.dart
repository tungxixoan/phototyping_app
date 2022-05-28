import 'dart:async';

import 'package:flutter/material.dart';
import 'package:phototyping_app/page/home/home_page.dart';
import 'package:phototyping_app/utils/app_color.dart';
import 'package:phototyping_app/utils/dimensions.dart';
import 'package:phototyping_app/widgets/title_text.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({ Key? key }) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin {

  late Animation<double> animation;
  late AnimationController controller;

  @override
  void initState(){

    
    super.initState();
    controller = AnimationController(
      vsync: this ,
       duration: const Duration(seconds: 2))..forward();
    animation = CurvedAnimation(
      parent: controller,
      curve: Curves.linear);
    Timer(
      const Duration(seconds: 3),
      ()=>Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (BuildContext context) => const HomePage())));
  }

  @override
  void dispose(){
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/image/backgr1.png"),fit: BoxFit.cover)
        ),
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ScaleTransition(scale: animation,
            child: Center(child:TitleText(text: "phototyping", color: AppColors.textBlackColor, size: Dimensions.font50,))),
            // Center(child: Image.asset("assets/image/logo part 2.png", width: Dimensions.splashImg,)),
          ],
        ),
      ),
    );
  }
}