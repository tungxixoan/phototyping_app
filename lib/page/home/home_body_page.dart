import 'package:flutter/material.dart';
import 'package:phototyping_app/page/home/full_screen_page.dart';
import 'package:phototyping_app/page/profile/profile_page.dart';
import 'package:phototyping_app/utils/app_color.dart';
import 'package:phototyping_app/utils/dimensions.dart';
import 'package:phototyping_app/widgets/avt_nickname_text.dart';
import 'package:phototyping_app/widgets/big_text.dart';

class HomeBodyPage extends StatefulWidget {
  const HomeBodyPage({Key? key}) : super(key: key);

  @override
  State<HomeBodyPage> createState() => _HomeBodyPageState();
}

class _HomeBodyPageState extends State<HomeBodyPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: Dimensions.height30),
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // News title
                BigText(
                  text: "WHAT'S NEW TODAY",
                  color: AppColors.textBlackColor,
                  size: Dimensions.font16,
                ),
                //News view
                SizedBox(
                  height: Dimensions.height10,
                ),
                SizedBox(
                  height: Dimensions.height431,
                  child: PageView.builder(
                    itemCount: 4,
                    itemBuilder: (context, position) {
                      return _buildPageItem(position);
                    },
                  ),
                ),
                SizedBox(
                  height: Dimensions.height10,
                ),
                BigText(
                  text: "BROWSE ALL",
                  color: AppColors.textBlackColor,
                  size: Dimensions.font16,
                ),
                SizedBox(
                  height: Dimensions.height20,
                ),
                GridView.builder(
                  itemCount: 16,
                  shrinkWrap: true,
                  primary: false,
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    childAspectRatio: 0.65), 
                    itemBuilder: (context, index){
                      return Container(
                        color: Colors.blueAccent,
                        child: const Image(
                          image: AssetImage("assets/image/browse_all1.png"),
                          fit: BoxFit.cover,
                        ),
                      );
                    }
                  ),
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
                        borderRadius: BorderRadius.circular(5),
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
                // Browser view
              ],
            ),
          ),
        ));
  }

  Widget _buildPageItem(int index) {
    return Container(
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) {
                return const FullScreenPage();
              }));
            },
            child: Container(
              height: Dimensions.height370,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/image/news_today1.png")),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) {
                return const ProfilePage();
              }));
            },
            child: const AvaterNickNameText(
              image: "assets/image/avt1.png",
              name: "tungxixoan",
              nick: "tungxixoan",
            ),
          ),
        ],
      ),
    );
  }
}
