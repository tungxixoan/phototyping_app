import 'package:flutter/material.dart';
import 'package:phototyping_app/utils/app_color.dart';
import 'package:phototyping_app/utils/dimensions.dart';
import 'package:phototyping_app/widgets/big_text.dart';
import 'package:phototyping_app/widgets/incoming_mess.dart';
import 'package:phototyping_app/widgets/my_mess.dart';

class PrivateChatPage extends StatefulWidget {
  const PrivateChatPage({Key? key}) : super(key: key);

  @override
  State<PrivateChatPage> createState() => _PrivateChatPageState();
}

class _PrivateChatPageState extends State<PrivateChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Container(
        child: Column(
          children: [
            Container(
              height: Dimensions.height50,
              padding: EdgeInsets.only(bottom: Dimensions.height10),
              decoration: const BoxDecoration(
                border:
                    Border(bottom: BorderSide(color: Colors.grey, width: 1)),
              ),
              child: Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                        left: Dimensions.width15,
                        right: Dimensions.width15,
                        top: Dimensions.height15),
                    child: Center(
                        child: BigText(
                      text: "James",
                      color: AppColors.textBlackColor,
                    )),
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                          margin: EdgeInsets.only(
                              left: Dimensions.width15,
                              top: Dimensions.height15),
                          child: const Icon(Icons.arrow_back_ios))),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                   margin: EdgeInsets.only(bottom: Dimensions.height10),
                  child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: 15,
                      primary: false,
                      itemBuilder: (context, index) {
                        if (index % 2 == 0) {
                          return const MyMess();
                        }
                        return const IncomingChat();
                      }),
                ),
              ),
            ),
            Container(
              height: Dimensions.height30 * 2,
              width: double.maxFinite,
              decoration:  BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: Colors.grey, 
                    width: Dimensions.radius10/Dimensions.radius10,
                    )
                  )
                ),
              child: Container(
              margin: const EdgeInsets.only(left: 15,right: 15),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: (){
                        print("I tap");
                      },
                      child: Container(
                        height: Dimensions.height30,
                        width: Dimensions.width30,
                        decoration: BoxDecoration(
                          color: Colors.lightBlue,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: const Icon(Icons.add, color: Colors.white, size: 20, ),
                      ),
                    ),
                    SizedBox(width:  Dimensions.width15,),
                    const Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Write message...",
                          hintStyle: TextStyle(color: Colors.black54),
                          border: InputBorder.none
                        ),
                      ),
                    ),
                    SizedBox(width: Dimensions.width15,),
                    GestureDetector(
                      onTap: (){
                        print("I tap");
                      },
                      child: Container(
                        height: Dimensions.height30,
                        width: Dimensions.width30,
                        decoration: BoxDecoration(
                          color: Colors.lightBlue,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: const Icon(Icons.send, color: Colors.white, size: 18, ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
