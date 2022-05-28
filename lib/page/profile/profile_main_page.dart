import 'package:flutter/material.dart';
import 'package:phototyping_app/page/chat/private_chat_page.dart';
import 'package:phototyping_app/page/profile/image_profile.dart';
import 'package:phototyping_app/utils/app_color.dart';
import 'package:phototyping_app/utils/dimensions.dart';
import 'package:phototyping_app/widgets/big_text.dart';
import 'package:phototyping_app/widgets/title_text.dart';

class ProfileMainPage extends StatelessWidget {
  const ProfileMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(
            left: Dimensions.height15,
            right: Dimensions.width15,
            top: Dimensions.height15),
          child: Column(
            children: [
              Center(
                child: Container(
                  height: Dimensions.height25 * 6,
                  width: Dimensions.width25 * 6,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(Dimensions.radius25 * 3),
                        bottomRight: Radius.circular(Dimensions.radius25 * 3),
                        topLeft: Radius.circular(Dimensions.radius25 * 3),
                        topRight: Radius.circular(Dimensions.radius25 * 3),
                      ),
                      image: const DecorationImage(
                          image: AssetImage("assets/image/jane_avt.png"),
                          fit: BoxFit.cover)),
                ),
              ),
              SizedBox(height: Dimensions.height30),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Center(child: TitleText(text: "Jane", color: AppColors.textBlackColor),),
                      SizedBox(height: Dimensions.height20),
                      Center(
                        child: BigText(
                          text: "SAN FRANCISCO" "," "CA",
                          color: AppColors.textBlackColor,
                          size: Dimensions.font16,
                        ),
                      ),
                      SizedBox(height: Dimensions.height30,),
                      Container(
                        height: Dimensions.height50,
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(Dimensions.height5 * 1.5),
                            color: Colors.black),
                        child: Center(
                          child: BigText(
                            text: "FOLLOW " "JANE",
                            color: Colors.white,
                            size: Dimensions.font13,
                          )
                        ),
                      ),
                      SizedBox(height: Dimensions.height15,),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (_) {
                              return const PrivateChatPage();
                            }));
                        },
                        child: Container(
                          height: Dimensions.height50,
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Colors.black),
                            borderRadius:
                                BorderRadius.circular(Dimensions.height5 * 1.5),
                            // color: Colors.black
                          ),
                          child: Center(
                            child: BigText(
                              text: "MESSAGE",
                              color: Colors.black,
                              size: Dimensions.font16,
                            )
                          ),
                        ),
                      ),
                      SizedBox(height: Dimensions.height15,),
                      const ImageProfile(),
                      GestureDetector(
                        onTap: () {
                          print("I tap");
                        },
                        child: Container(
                          height: Dimensions.height50,
                          width: double.maxFinite,
                          margin: EdgeInsets.only(bottom: Dimensions.height10, top: Dimensions.height10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(Dimensions.height5*1.5),
                              border: Border.all(
                            color: Colors.black,
                            width: 2,
                          )),
                          child: Center(
                            child: BigText(
                              text: "SEE MORE",
                              color: AppColors.textBlackColor,
                              size: Dimensions.font16),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              )
            ],
          ),
        ),
      ),
    );
  }
}
