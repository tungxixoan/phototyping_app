import 'package:flutter/material.dart';
import 'package:phototyping_app/page/chat/private_chat_page.dart';
import 'package:phototyping_app/utils/app_color.dart';
import 'package:phototyping_app/utils/dimensions.dart';
import 'package:phototyping_app/widgets/big_text.dart';
import 'package:phototyping_app/widgets/small_text.dart';

class MainChatPage extends StatelessWidget {
  const MainChatPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only( bottom: Dimensions.height15),
                child: Center(child: BigText(text: "Chats", color: AppColors.textBlackColor, size: Dimensions.font20,))
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 15,
                    primary: false,
                    itemBuilder:  (context, index) {
                      return Container(
                        padding: EdgeInsets.only(left: Dimensions.width15),
                        decoration: const BoxDecoration(
                          border: Border(top: BorderSide(color: Colors.grey, width: 0.75)),
                        ),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (_) {
                              return const PrivateChatPage();
                            }));
                          },
                          child: Container(
                            padding: EdgeInsets.only(top: Dimensions.height15, bottom: Dimensions.height15),
                            child: Row(
                              children: [
                                Container(
                                  height: Dimensions.height35*2,
                                  width: Dimensions.width35*2,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(Dimensions.radius5*7),
                                    image: const DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                        "assets/image/avt1.png"
                                      )
                                    ),
                                  ),
                                ),
                                Container(
                                  height: Dimensions.height35*2,
                                  width: Dimensions.width10*30,
                                  margin: EdgeInsets.only(left: Dimensions.width15, ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SmallText(text: "James", color: AppColors.textBlackColor, size: Dimensions.font16, fontWeight: FontWeight.bold,),
                                      SizedBox(height: Dimensions.height5,),
                                      Expanded(child: Container(child: SmallText(text: "If you say that something happens thanks to a particular person or thing, you mean that they are responsible for it happening or caused it to happen ",size: Dimensions.font16, color: Colors.black,)))
                        
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    }
                  ),
                ),
              ),
            ],
          ),
        )
      ),
    );
  }
}