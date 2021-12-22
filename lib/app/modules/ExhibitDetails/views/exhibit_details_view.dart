import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:qr_scanner_museum/app/common/widgets/custom_loader.dart';

import '../controllers/exhibit_details_controller.dart';
import 'common_infomation.dart';
import 'detail_infomation.dart';
import 'source_infomation.dart';

class ExhibitDetailsView extends GetView<ExhibitDetailsController> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Chi tiết hiện vật"),
          centerTitle: true,
          bottom: TabBar(
            indicatorColor: Colors.amberAccent,
            tabs: [
              Tab(
                text: "Đặc điểm",
              ),
              Tab(
                text: "Nguồn gốc",
              ),
              Tab(
                text: "Mô tả chi tiết",
              ),
            ],
          ),
        ),
        body: SafeArea(child: Obx(() {
          if (controller.isLoading == true) {
            return LoadingScreen(height: size.height);
          }
          return Container(
            width: size.width,
            height: size.height * 1.5,
            margin: EdgeInsets.only(top: 25, right: 25, left: 25),
            child: TabBarView(
              children: [
                CommonInfomation(
                  pr_name: controller.exhibit.pr_name,
                  pro_name: controller.exhibit.pro_name,
                  pro_image: controller.exhibit.pro_image,
                  pro_shortdescription: controller.exhibit.pro_shortdescription,
                  pro_size: controller.exhibit.pro_size,
                  pro_weight: controller.exhibit.pro_weight,
                  pro_color: controller.exhibit.pro_color,
                  pro_status: controller.exhibit.pro_status,
                  pro_material: controller.exhibit.pro_material,
                  size: size,
                ),
                SourceInfomation(
                  pr_name: controller.exhibit.pr_name,
                  pro_name: controller.exhibit.pro_name,
                  pro_image: controller.exhibit.pro_image,
                  pro_source: controller.exhibit.pro_source,
                  size: size,
                ),
                DetailInfomation(
                  pr_name: controller.exhibit.pr_name,
                  pro_name: controller.exhibit.pro_name,
                  pro_image: controller.exhibit.pro_image,
                  pro_detail: controller.exhibit.pro_detail,
                  size: size,
                ),
              ],
            ),
          );
        })),
      ),
    );
  }
}
