import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Instruction extends StatelessWidget {
  const Instruction({
    required this.height,
    required this.width,
    Key? key,
  }) : super(key: key);

  final double height, width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            "Quét mã QR",
            style: TextStyle(
              color: Color(0xff67BFA7),
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "Quét mã QR có trên hiện vật để xem thông tin chi tiết của hiện vật",
            style: TextStyle(
              color: Color(0xffA3A3A3),
              fontSize: 16,
            ),
            textAlign: TextAlign.center,
          ),
          SvgPicture.asset(
            "assets/images/qr_code_vector.svg",
            width: width * 0.8,
            height: height * 0.7,
          ),
        ],
      ),
    );
  }
}
