import 'package:flutter/material.dart';
import 'package:qr_scanner_museum/app/common/constant.dart';

class SourceInfomation extends StatelessWidget {
  const SourceInfomation({
    Key? key,
    required this.size,
    required this.pr_name,
    required this.pro_name,
    required this.pro_image,
    required this.pro_source,
  }) : super(key: key);

  final Size size;
  final String pro_source, pr_name, pro_name, pro_image;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: Image.network(
                apiUrl + "images/" + pro_image,
                width: size.width * 0.5,
                height: size.width * 0.5,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Text(
            pr_name,
            style: TextStyle(
              color: Color(0xffA3A3A3),
              fontSize: 16,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Text(
            pro_name,
            style: TextStyle(
              color: Color(0xff67BFA7),
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Text(
            pro_source.replaceAll('\\n', '\n'),
            style: TextStyle(
              color: Color(0xff535353),
              fontSize: 15,
              height: 1.4,
            ),
          ),
        ),
      ],
    );
  }
}
