import 'dart:convert';

import 'package:get/get.dart';
import 'package:qr_scanner_museum/app/common/constant.dart';
import 'package:qr_scanner_museum/app/data/models/ExhibitModel.dart';
import 'package:http/http.dart' as http;

class ExhibitDetailsController extends GetxController {
  RxString _qrResult = "".obs;
  String get qrResult => _qrResult.value;
  set qrResult(value) => _qrResult.value = value;

  RxBool _isLoading = false.obs;
  bool get isLoading => _isLoading.value;
  set isLoading(value) => _isLoading.value = value;

  Rx<ExhibitModel> _exhibit = ExhibitModel(
          id: -1,
          pr_name: "",
          pro_name: "",
          pro_shortdescription: "",
          pro_size: "",
          pro_weight: 0,
          pro_color: "",
          pro_status: "",
          pro_material: "",
          pro_source: "",
          pro_detail: "",
          pro_image: "")
      .obs;
  ExhibitModel get exhibit => _exhibit.value;
  set exhibit(value) => _exhibit.value = value;

  Future<ExhibitModel> fetchExhibit(String id) async {
    final response = await http.get(Uri.parse(apiUrl + 'api/exhibits/' + id));

    if (response.statusCode == 200) {
      return ExhibitModel.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load album');
    }
  }

  Future<void> loadData() async {
    isLoading = true;
    qrResult = Get.arguments ?? "1";
    exhibit = await fetchExhibit(qrResult);

    isLoading = false;
  }

  @override
  void onInit() async {
    super.onInit();
    await loadData();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
