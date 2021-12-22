import 'package:get/get.dart';

import 'package:qr_scanner_museum/app/modules/ExhibitDetails/bindings/exhibit_details_binding.dart';
import 'package:qr_scanner_museum/app/modules/ExhibitDetails/views/exhibit_details_view.dart';
import 'package:qr_scanner_museum/app/modules/home/bindings/home_binding.dart';
import 'package:qr_scanner_museum/app/modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.EXHIBIT_DETAILS,
      page: () => ExhibitDetailsView(),
      binding: ExhibitDetailsBinding(),
    ),
  ];
}
