import 'package:flutter/material.dart';
import 'package:phototyping_app/utils/app_color.dart';
import 'package:phototyping_app/utils/dimensions.dart';
import 'package:phototyping_app/widgets/big_text.dart';

class AllResult extends StatefulWidget {
  const AllResult({Key? key}) : super(key: key);

  @override
  State<AllResult> createState() => _AllResultState();
}

class _AllResultState extends State<AllResult> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: Dimensions.height30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BigText(
              text: "ALL RESULT",
              color: AppColors.textBlackColor,
              size: Dimensions.font16),
          SizedBox(
            height: Dimensions.height10,
          ),
          GridView.builder(
            itemCount: 16,
            shrinkWrap: true,
            primary: false,
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 150,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,),
            itemBuilder: (context, index) {
              return Container(
                color: Colors.blueAccent,
                child: const Image(
                  image: AssetImage("assets/image/browse_all1.png"),
                  fit: BoxFit.cover,
                ),
              );
            }),
          GestureDetector(
            onTap: () {
              print("I tap");
            },
            child: Container(
              height: Dimensions.height50,
              width: double.maxFinite,
              margin: EdgeInsets.only(
                  bottom: Dimensions.height10, top: Dimensions.height10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.height5 * 1.5),
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
    );
  }
}
