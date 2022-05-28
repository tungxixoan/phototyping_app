import 'package:flutter/material.dart';
import 'package:phototyping_app/page/home/home_page.dart';
import 'package:phototyping_app/utils/dimensions.dart';
import 'package:phototyping_app/widgets/avt_nickname_text.dart';

class FullScreenPage extends StatefulWidget {
  const FullScreenPage({Key? key}) : super(key: key);

  @override
  State<FullScreenPage> createState() => _FullScreenPageState();
}

class _FullScreenPageState extends State<FullScreenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body: Stack(
        children: [
          Positioned(
              child: Container(
            height: double.maxFinite,
            width: double.maxFinite,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/image/full2.png"),
                    fit: BoxFit.cover)),
          )),
          Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Container(
                padding: EdgeInsets.only(
                    top: Dimensions.height40,
                    left: Dimensions.width10,
                    right: Dimensions.width10,
                    bottom: Dimensions.height320),
                // color: Colors.black38,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.black87,
                    Color(0X0BFFFFFF),
                  ],
                )),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const AvaterNickNameText(
                      image: "assets/image/avt1.png",
                      name: "tungxixoan",
                      nick: "tungxixoan",
                      nameColor: Colors.white,
                      nickColor: Colors.white,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (_) {
                          return const HomePage();
                        }));
                      },
                      child: const Icon(
                        Icons.clear,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
