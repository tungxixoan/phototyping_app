import 'package:flutter/material.dart';

class ImageProfile extends StatefulWidget {
  const ImageProfile({Key? key}) : super(key: key);

  @override
  State<ImageProfile> createState() => _ImageProfileState();
}

class _ImageProfileState extends State<ImageProfile> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      primary: false,
      // padding: const EdgeInsets.all(20),
      crossAxisSpacing: 5,
      mainAxisSpacing: 5,
      crossAxisCount: 2,
      children: <Widget>[
        Container(
          // padding: const EdgeInsets.all(8),
          child: const Image(
            image: AssetImage("assets/image/browse_all1.png"),
            fit: BoxFit.cover,
          ),
          // color: Colors.teal[100],
        ),
        Container(
          // padding: const EdgeInsets.all(8),
          child: const Image(
            image: AssetImage("assets/image/browse_all2.png"),
            fit: BoxFit.cover,
          ),
          // color: Colors.teal[200],
        ),
        Container(
          // padding: const EdgeInsets.all(8),
          child: const Image(
            image: AssetImage("assets/image/browse_all3.png"),
            fit: BoxFit.cover,
          ),
          // color: Colors.teal[300],
        ),
        Container(
          // padding: const EdgeInsets.all(8),
          child: const Image(
            image: AssetImage("assets/image/browse_all4.png"),
            fit: BoxFit.cover,
          ),
          // color: Colors.teal[400],
        ),
        Container(
          // padding: const EdgeInsets.all(8),
          child: const Image(
            image: AssetImage("assets/image/browse_all5.png"),
            fit: BoxFit.cover,
          ),
          // color: Colors.teal[500],
        ),
        Container(
          // padding: const EdgeInsets.all(8),
          child: const Image(
            image: AssetImage("assets/image/browse_all6.png"),
            fit: BoxFit.cover,
          ),
          // color: Colors.teal[600],
        ),
        Container(
          // padding: const EdgeInsets.all(8),
          child: const Image(
            image: AssetImage("assets/image/browse_all7.png"),
            fit: BoxFit.cover,
          ),
          // color: Colors.teal[300],
        ),
        Container(
          // padding: const EdgeInsets.all(8),
          child: const Image(
            image: AssetImage("assets/image/browse_all8.png"),
            fit: BoxFit.cover,
          ),
          // color: Colors.teal[400],
        ),
        Container(
          // padding: const EdgeInsets.all(8),
          child: const Image(
            image: AssetImage("assets/image/browse_all9.png"),
            fit: BoxFit.cover,
          ),
          // color: Colors.teal[500],
        ),
        Container(
          // padding: const EdgeInsets.all(8),
          child: const Image(
            image: AssetImage("assets/image/browse_all10.png"),
            fit: BoxFit.cover,
          ),
          // color: Colors.teal[600],
        ),
        Container(
          // padding: const EdgeInsets.all(8),
          child: const Image(
            image: AssetImage("assets/image/browse_all1.png"),
            fit: BoxFit.cover,
          ),
          // color: Colors.teal[100],
        ),
        Container(
          // padding: const EdgeInsets.all(8),
          child: const Image(
            image: AssetImage("assets/image/browse_all2.png"),
            fit: BoxFit.cover,
          ),
          // color: Colors.teal[200],
        ),
        Container(
          // padding: const EdgeInsets.all(8),
          child: const Image(
            image: AssetImage("assets/image/browse_all3.png"),
            fit: BoxFit.cover,
          ),
          // color: Colors.teal[300],
        ),
        Container(
          // padding: const EdgeInsets.all(8),
          child: const Image(
            image: AssetImage("assets/image/browse_all4.png"),
            fit: BoxFit.cover,
          ),
          // color: Colors.teal[400],
        ),
        Container(
          // padding: const EdgeInsets.all(8),
          child: const Image(
            image: AssetImage("assets/image/browse_all5.png"),
            fit: BoxFit.cover,
          ),
          // color: Colors.teal[500],
        ),
        Container(
          // padding: const EdgeInsets.all(8),
          child: const Image(
            image: AssetImage("assets/image/browse_all6.png"),
            fit: BoxFit.cover,
          ),
          // color: Colors.teal[600],
        ),
        Container(
          // padding: const EdgeInsets.all(8),
          child: const Image(
            image: AssetImage("assets/image/browse_all7.png"),
            fit: BoxFit.cover,
          ),
          // color: Colors.teal[300],
        ),
        Container(
          // padding: const EdgeInsets.all(8),
          child: const Image(
            image: AssetImage("assets/image/browse_all8.png"),
            fit: BoxFit.cover,
          ),
          // color: Colors.teal[400],
        ),
        Container(
          // padding: const EdgeInsets.all(8),
          child: const Image(
            image: AssetImage("assets/image/browse_all9.png"),
            fit: BoxFit.cover,
          ),
          // color: Colors.teal[500],
        ),
        Container(
          // padding: const EdgeInsets.all(8),
          child: const Image(
            image: AssetImage("assets/image/browse_all10.png"),
            fit: BoxFit.cover,
          ),
          // color: Colors.teal[600],
        ),
      ],
    );
  }
}
