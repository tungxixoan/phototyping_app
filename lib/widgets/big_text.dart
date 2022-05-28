
import 'package:flutter/material.dart';
import 'package:phototyping_app/utils/dimensions.dart';

class BigText extends StatelessWidget {
  final String text;
  final Color color;
  double size;
  TextOverflow textOverflow;
   BigText({ Key? key, 
  required this.text, 
  required this.color, 
  this.size = 0,
  this.textOverflow = TextOverflow.ellipsis
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text, 
      maxLines: 1,
      overflow: textOverflow,
      style: TextStyle(
        fontFamily: 'Regular',
        fontWeight: FontWeight.w900,
        fontSize: size==0?Dimensions.height20:size,
        
        color: color
      ),
    );
  }
}