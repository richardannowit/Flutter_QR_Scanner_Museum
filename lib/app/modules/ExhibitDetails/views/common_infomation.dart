import 'package:flutter/material.dart';
import 'package:qr_scanner_museum/app/common/constant.dart';

class CommonInfomation extends StatelessWidget {
  const CommonInfomation(
      {Key? key,
      required this.size,
      required this.pr_name,
      required this.pro_name,
      required this.pro_image,
      required this.pro_shortdescription,
      required this.pro_size,
      required this.pro_weight,
      required this.pro_color,
      required this.pro_status,
      required this.pro_material})
      : super(key: key);

  final Size size;
  final String pr_name,
      pro_name,
      pro_image,
      pro_shortdescription,
      pro_size,
      pro_color,
      pro_status,
      pro_material;
  final double pro_weight;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
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
              pro_shortdescription,
              style: TextStyle(
                color: Color(0xff535353),
                fontSize: 15,
                height: 1.4,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: RichText(
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: 'Kích thước: ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xff535353),
                      fontSize: 15,
                      height: 1.4,
                    ),
                  ),
                  TextSpan(
                    text: pro_size,
                    style: TextStyle(
                      color: Color(0xff535353),
                      fontSize: 15,
                      height: 1.4,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: RichText(
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: 'Cân nặng: ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xff535353),
                      fontSize: 15,
                      height: 1.4,
                    ),
                  ),
                  TextSpan(
                    text: pro_weight.toString() + " kg",
                    style: TextStyle(
                      color: Color(0xff535353),
                      fontSize: 15,
                      height: 1.4,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: RichText(
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: 'Màu sắc: ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xff535353),
                      fontSize: 15,
                      height: 1.4,
                    ),
                  ),
                  TextSpan(
                    text: pro_color,
                    style: TextStyle(
                      color: Color(0xff535353),
                      fontSize: 15,
                      height: 1.4,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: RichText(
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: 'Trình trạng: ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xff535353),
                      fontSize: 15,
                      height: 1.4,
                    ),
                  ),
                  TextSpan(
                    text: pro_status,
                    style: TextStyle(
                      color: Color(0xff535353),
                      fontSize: 15,
                      height: 1.4,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: RichText(
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: 'Chất liệu: ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xff535353),
                      fontSize: 15,
                      height: 1.4,
                    ),
                  ),
                  TextSpan(
                    text: pro_material,
                    style: TextStyle(
                      color: Color(0xff535353),
                      fontSize: 15,
                      height: 1.4,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
