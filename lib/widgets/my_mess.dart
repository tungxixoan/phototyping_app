import 'package:flutter/material.dart';
import 'package:phototyping_app/utils/app_color.dart';
import 'package:phototyping_app/utils/dimensions.dart';
import 'package:phototyping_app/widgets/small_text.dart';

class MyMess extends StatefulWidget {
  const MyMess({ Key? key }) : super(key: key);

  @override
  State<MyMess> createState() => _MyMessState();
}

class _MyMessState extends State<MyMess> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: Dimensions.width10),
      padding: EdgeInsets.only(top: Dimensions.height10, right: Dimensions.width10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.only(top: Dimensions.height15, bottom: Dimensions.height15, left: Dimensions.width15, right: Dimensions.width15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(Dimensions.radius10),
                  bottomRight: Radius.circular(Dimensions.radius10),
                  bottomLeft: Radius.circular(Dimensions.radius10),
                ),
                color: const Color(0xFF7CD0EB),
              ),
              child: SmallText(text: "If you say that something happens thanks to a particular person or thing, yoIf you say that something happens thanks to a particular person or thing, yoIf you say that something happens thanks to a particular person or thing, yoIf you say that something happens thanks to a particular person or thing, yoIf you say that something happens thanks to a particular person or thing, yoIf you say that something happens thanks to a particular person or thing, you mean that they are responsible for it happening or caused it to happen ", 
                color: AppColors.textBlackColor,
                textOf: false,
                size: Dimensions.font16,
              ),
            ),
          ),
          SizedBox(width: Dimensions.width10,),
          Container(
            height: Dimensions.height40,
            width: Dimensions.width40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimensions.radius25),
              image: const DecorationImage(
                image: AssetImage("assets/image/avt1.png"),
                fit: BoxFit.cover
              )
            ),
          ),
        ],
      ),
    );
  }
}