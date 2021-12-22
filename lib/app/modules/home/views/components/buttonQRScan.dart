import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ButtonQRScan extends StatelessWidget {
  const ButtonQRScan({
    Key? key,
    required this.width,
    required this.onPressed,
  }) : super(key: key);

  final double width;
  final GestureTapCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Center(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 12.5),
          width: width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Color.fromARGB(255, 103, 191, 167),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipOval(
                child: SvgPicture.asset(
                  'assets/images/qr_code_vector.svg',
                  height: 30,
                  width: 30,
                ),
              ),
              SizedBox(width: width * 0.1),
              Text(
                'Quét mã QR',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
