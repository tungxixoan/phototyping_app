import 'package:flutter/material.dart';
import 'package:phototyping_app/page/search/all_result.dart';
import 'package:phototyping_app/utils/app_color.dart';
import 'package:phototyping_app/utils/dimensions.dart';
import 'package:phototyping_app/widgets/title_text.dart';

class SearchMainPage extends StatefulWidget {
  const SearchMainPage({Key? key}) : super(key: key);

  @override
  State<SearchMainPage> createState() => _SearchMainPageState();
}

class _SearchMainPageState extends State<SearchMainPage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(
              left: Dimensions.height15,
              right: Dimensions.width15,
              top: Dimensions.height15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TitleText(text: "Search", color: AppColors.textBlackColor),
              Expanded(
                  child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: Dimensions.height35),
                      padding: EdgeInsets.only(left: Dimensions.width10),
                      decoration: BoxDecoration(
                          border: Border.all(
                        color: Colors.black,
                        width: 2,
                      )),
                      child: const TextField(
                        obscureText: false,
                        decoration: InputDecoration(
                          hintText: 'Search all photos',
                        ),
                      ),
                    ),
                    const AllResult(),
                  ],
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
