import 'package:flutter/material.dart';
import 'package:phototyping_app/utils/app_color.dart';
import 'package:phototyping_app/utils/dimensions.dart';

class AvaterNickNameText extends StatelessWidget {
  final String image;
  final String name;
  final String nick;
  final double size;
  final Color? nameColor;
  final Color? nickColor;

  const AvaterNickNameText({Key? key,
  required this.image, 
  required this.name, 
  required this.nick, 
  this.nameColor,
  this.nickColor,
  this.size = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: Dimensions.height10),
      child: Row(
        children: [
          Container(
            height: Dimensions.height35,
            width: Dimensions.width35,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: AppColors.buttonBackgroundColor,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(image)),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: Dimensions.width10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Text(name, 
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w700,
                    fontSize: size==0?Dimensions.font13:size,
                    color: nameColor==""?AppColors.textBlackColor:nameColor,
                  ),),
                ),
                Container(
                  child: Text("@" +nick,
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                    fontSize: size==0?Dimensions.font13:size,
                    color: nickColor==""?AppColors.textBlackColor:nickColor,
                  ),),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
