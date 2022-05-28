import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:phototyping_app/page/home/grid_view.dart';
import 'package:phototyping_app/page/splash/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // print("Height : "+MediaQuery.of(context).size.width.toString());
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home:  const SplashScreen(),
    );
  }
}
