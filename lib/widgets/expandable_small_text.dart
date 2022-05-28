import 'package:flutter/material.dart';
import 'package:phototyping_app/utils/app_color.dart';
import 'package:phototyping_app/utils/dimensions.dart';
import 'package:phototyping_app/widgets/small_text.dart';

class ExpandableSmallText extends StatefulWidget {
  final String text;
  const ExpandableSmallText({ Key? key, required this.text }) : super(key: key);

  @override
  State<ExpandableSmallText> createState() => _ExpandableSmallTextState();
}

class _ExpandableSmallTextState extends State<ExpandableSmallText> {
late String firstHalf;
  late String secondHalf;

  bool hidenText=true;

  double textHeight = Dimensions.screenHeight/21.0;
  
  @override
  void initState(){
    super.initState();
    if(widget.text.length>textHeight){
      firstHalf = widget.text.substring(0, textHeight.toInt());
      secondHalf = widget.text.substring(textHeight.toInt()+1, widget.text.length);
    } else{
      firstHalf = widget.text;
      secondHalf="";
    }
   }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondHalf.isEmpty?SmallText(text: firstHalf,size: Dimensions.font16, color: AppColors.textBlackColor,):Column(
        children: [
          SmallText(color: AppColors.textBlackColor, size: Dimensions.font16, text: hidenText?(firstHalf+"..."):(firstHalf+secondHalf)),
          // InkWell(
          //   onTap: () {
          //     setState(() {
          //       hidenText=!hidenText;
          //     });
          //   },
          //   child: Row(
          //     children: [
          //       SmallText( text: hidenText?("Show more"):("Hide"), size: Dimensions.font16, color: AppColors.mainColor,),
          //       Icon(hidenText?Icons.arrow_drop_down:Icons.arrow_drop_up, color: AppColors.mainColor,),
          //     ],
          //   ),
          // )
        ],
      ),
      
    );
  }
}