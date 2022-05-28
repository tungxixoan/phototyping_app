import 'package:flutter/material.dart';
import 'package:phototyping_app/page/home/home_body_page.dart';
import 'package:phototyping_app/utils/app_color.dart';
import 'package:phototyping_app/utils/dimensions.dart';
import 'package:phototyping_app/widgets/title_text.dart';

class MainHomePage extends StatelessWidget {
  const MainHomePage({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    print("Height : "+MediaQuery.of(context).size.width.toString());
    return Scaffold(
      // backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(left: Dimensions.height15, right: Dimensions.width15, top: Dimensions.height15),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TitleText(text: "Discover", color: AppColors.textBlackColor),
              const Expanded(child: SingleChildScrollView(child: HomeBodyPage(),))
            ],
          ),
        ),
      ),
    );
    
  }
}