import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:qr_scanner_museum/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';
import 'components/buttonQRScan.dart';
import 'components/instruction.dart';
import 'components/welcome.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: size.width,
          height: size.height,
          margin: EdgeInsets.only(top: 30, right: 30, left: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Welcome(
                height: size.height * 0.1,
                width: size.width,
              ),
              Instruction(
                width: size.width,
                height: size.height * 0.7,
              ),
              ButtonQRScan(
                width: size.width * 0.6,
                onPressed: () async {
                  final result = await controller.scanQR();
                  if (result != '-1') {
                    Get.toNamed(Routes.EXHIBIT_DETAILS,
                        arguments: controller.qrResult);
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
