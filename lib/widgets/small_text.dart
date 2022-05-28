
import 'package:flutter/material.dart';
import 'package:phototyping_app/utils/dimensions.dart';

class SmallText extends StatelessWidget {
  final String text;
  final Color color;
  double size;
  // double height;
  FontWeight? fontWeight;
  // TextOverflow textOverflow;
  bool textOf;
  SmallText({ Key? key, 
  required this.text, 
  required this.color, 
  this.size = 0,
  // this.height = 1.8,
  this.fontWeight,
  // this.textOverflow = TextOverflow.ellipsis,
  this.textOf = true
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text, 
      maxLines: textOf==true?2:null,
      overflow: textOf==true?TextOverflow.ellipsis:null,
      textAlign: TextAlign.justify,
      style: TextStyle(
        
        fontFamily: 'Regular',
        fontWeight: fontWeight==""?FontWeight.w400:fontWeight,
        fontSize: size==0?Dimensions.font13:size,
        color: color,
        // height: height
      ),
    );
  }
}