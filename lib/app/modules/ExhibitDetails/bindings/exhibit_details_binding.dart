import 'package:get/get.dart';

import '../controllers/exhibit_details_controller.dart';

class ExhibitDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ExhibitDetailsController>(
      () => ExhibitDetailsController(),
    );
  }
}
