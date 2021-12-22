import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({
    required this.height,
    required this.width,
    Key? key,
  }) : super(key: key);

  final double height, width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HelloText(),
        ],
      ),
    );
  }
}

class HelloText extends StatelessWidget {
  const HelloText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "Chào mừng, ",
          style: TextStyle(
            fontFamily: "Roboto",
            color: Color(0xff898484),
            fontSize: 24,
            letterSpacing: 3.5,
            fontWeight: FontWeight.w300,
          ),
        ),
        SizedBox(height: 10),
        Text(
          "TÊN ỨNG DỤNG",
          style: TextStyle(
            color: Color(0xff7B7171),
            fontSize: 26,
          ),
        ),
      ],
    );
  }
}
